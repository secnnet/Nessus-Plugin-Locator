# Nessus Plugin Locator

The Nessus Plugin Locator is a Bash script that allows you to search for specific Nessus plugins based on their plugin ID. This script helps you locate the file path of a plugin within the Nessus plugins directory.

## Prerequisites

- Bash shell

## Usage

1. Open a terminal.
2. Navigate to the directory where the script is saved.
3. Execute the script with the following command:

`./nessus-plugin-locator.sh <PLUGIN-ID>`

Replace `<PLUGIN-ID>` with the ID of the plugin you want to search for.

Example:

`./nessus-plugin-locator.sh 12345`

4. The script will search for the specified plugin ID within the Nessus plugins directory.
5. If a matching plugin file is found, the script will display the file path.
6. If no matching plugin is found, a message will indicate that no plugin was found for the provided ID.

## Important Notes

- Ensure that you have the necessary permissions to execute the script. You can use the command `chmod +x nessus-plugin-locator.sh` to make the script executable if needed.
- The script performs a search on the entire filesystem to find the Nessus plugins directory. This might take some time depending on the size of your filesystem.

## License

This script is licensed under the [MIT License](LICENSE).

