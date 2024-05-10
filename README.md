# Nimble Wallet Generator

This script automates the setup process for a wallet using Nimble Technology's wallet-public repository.

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone <repository_url>
    ```

2. Navigate to the repository directory:

    ```bash
    cd <repository_name>
    ```

3. Make the setup script executable:

    ```bash
    chmod +x setup_wallet.sh
    ```

4. Execute the script with your desired wallet name as an argument:

    ```bash
    ./setup_wallet.sh <WALLET_NAME>
    ```

    Replace `<WALLET_NAME>` with the name you want to assign to your wallet.

5. Follow any prompts or instructions provided during the installation process.

6. Once the script completes, your wallet should be set up and ready to use.

## Notes

- This script assumes that `make`, `git`, and `curl` are installed on your system. If any of these dependencies are missing, you may need to install them manually before running the script.
- The script also installs Go version 1.22.1 if it's not already installed on your system. Make sure to refresh your terminal after installation to update the PATH variable.

## License

This script is provided under the [MIT License](LICENSE).
