## Overview

`write-log.sh` is a bash script that appends JSON log entries with a timestamp to a specified log file in the `~/Library/Logs` directory on macOS.

## Usage

### Syntax

```sh
./write-log.sh <log-file-name> <json-log-entry>
```

### Parameters

- `<log-file-name>`: Name of the log file (without extension).
- `<json-log-entry>`: JSON string representing the log entry. A `timestamp` field is added automatically.

### Example

```sh
./json-log-writer/src/write-log.sh myapp '{"level":"INFO","message":"My message"}'
```

## How It Works

1. **Argument Check**: Ensures two arguments are provided.
2. **Timestamp**: Generates current timestamp in ISO 8601 format (UTC).
3. **Directory Creation**: Ensures `~/Library/Logs` exists.
4. **JSON Modification**: Inserts `timestamp` into the JSON log entry.
5. **Append Entry**: Appends modified JSON log entry to the log file.

## Script Location

The script is located in the `src` directory of this repository. You can find the script [here](src/write-log.sh).

## License

MIT License

## Support

For issues or questions, contact the maintainer.
