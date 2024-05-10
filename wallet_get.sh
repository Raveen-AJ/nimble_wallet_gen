#!/bin/bash

# Check if WALLET_NAME argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 WALLET_NAME"
    exit 1
fi

WALLET_NAME=$1

# Check if make is installed, if not, install it
if ! command -v make &> /dev/null; then
    echo "make is not installed. Installing..."
    sudo apt install make &> /dev/null
fi

# Check if golang is installed, if not, download and install it
if ! command -v go &> /dev/null; then
    echo "golang is not installed. installing..."
    curl -OL https://golang.org/dl/go1.22.1.linux-amd64.tar.gz &> /dev/null
    sudo tar -C /usr/local -xvf go1.22.1.linux-amd64.tar.gz &> /dev/null
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
    source ~/.profile
fi

# Create nimble directory if it doesn't exist
mkdir -p $HOME/nimble_wallet_gen && cd $HOME/nimble_wallet_gen

# Clone the wallet-public repository
git clone https://github.com/nimble-technology/wallet-public.git &> /dev/null

# Change directory to wallet-public
cd wallet-public

# Install the project
make install &> /dev/null

# Add the wallet
cd ~/go/bin
./nimble-networkd keys add $WALLET_NAME

# clear everything
rm -rf $HOME/nimble_wallet_gen
rm -f go1.22.1.linux-amd64.tar.gz
