#!/bin/bash

# Check the number of command-line arguments
if [ $# -ne 1 ]; then
    echo "Usage: ./find-nessus-plugin.sh <PLUGIN-ID>"
    exit 1
fi

# Assign the plugin ID from the command-line argument to the PLUGIN_ID variable
PLUGIN_ID=$1

# Search for the directory containing the plugin file
PLUGINS_DIR=$(find / -name zinwave_series_3000_das_default_credentials.nasl -exec dirname {} \; -quit 2>/dev/null)

# Check if the plugins directory was found
if [[ -z "$PLUGINS_DIR" ]]; then
    echo "[!] Could not find Nessus plugins directory."
    exit 1
fi

# Search for the plugin file within the plugins directory using the plugin ID
MATCHED_FILE=$(grep -l -a -o -r -m 1 --include=*.nasl -G "script_id($PLUGIN_ID)" "$PLUGINS_DIR" 2>/dev/null)

# Check if a matching file was found
if [[ -z "$MATCHED_FILE" ]]; then
    echo "No matching plugin found for ID: $PLUGIN_ID"
else
    echo "Matching plugin file found:"
    echo "$MATCHED_FILE"
fi
