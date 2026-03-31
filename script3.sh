#!/bin/bash
# Script 3: Disk and Permission Auditor
# Purpose: Uses a loop to audit directory sizes and permissions

# List of directories to audit
DIRECTORIES=("/usr/bin/python3" "/etc" "/home/$USER")

echo "--- Directory Security & Size Audit ---"
echo -e "PERMISSIONS\tOWNER\tSIZE\tPATH"

for DIR in "${DIRECTORIES[@]}"
do
    if [ -e "$DIR" ]; then
        # Get permissions, owner, and human-readable size
        STATS=$(ls -ld "$DIR" | awk '{print $1 "\t" $3}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        echo -e "$STATS\t$SIZE\t$DIR"
    else
        echo "Path $DIR does not exist."
    fi
doneO

