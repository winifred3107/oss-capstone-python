#!/bin/bash
# Script 4: Log File Analyzer
# Purpose: Reads a log file to count error occurrences

LOG_FILE="/var/log/syslog"
KEYWORD="error"
COUNT=0

echo "Analyzing $LOG_FILE for '$KEYWORD' entries..."

# Check if file exists and is readable
if [ -r "$LOG_FILE" ]; then
    while read -r LINE; do
        # Check if line contains the keyword (case insensitive)
        if [[ $LINE == *"$KEYWORD"* || $LINE == *"ERROR"* ]]; then
            ((COUNT++))
        fi
    done < "$LOG_FILE"
    echo "Total '$KEYWORD' instances found: $COUNT"
else
    echo "Error: Cannot read $LOG_FILE. Try running with sudo."
fi
