#!/bin/bash

# Ensure correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <log-file-name> <json-log-entry>"
    exit 1
fi

log_file_name="$1"
json_log_entry="$2"
log_dir="$HOME/Library/Logs"
log_file="$log_dir/$log_file_name.log"

# Get the current timestamp in ISO 8601 format
timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

# Create the logs directory if it does not exist
mkdir -p "$log_dir"

# Add the timestamp field to the JSON log entry
json_log_entry=$(echo "$json_log_entry" | sed -e "s/^{/{\"timestamp\":\"$timestamp\",/")

# Append the JSON log entry to the log file
echo "$json_log_entry" >> "$log_file"

echo "Log entry added to $log_file"
