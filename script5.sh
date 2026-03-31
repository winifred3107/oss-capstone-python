#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Purpose: Interactive script to generate a philosophy file

echo "Welcome to the OSS Manifesto Generator."
read -p "What is your name? " USER_NAME
read -p "What is your favorite Open Source tool? " TOOL
read -p "Why do you believe in Open Source? " REASON

FILENAME="manifesto_$(date +%Y%m%d).txt"

# Creating the file
{
    echo "OPEN SOURCE MANIFESTO"
    echo "----------------------"
    echo "Author: $USER_NAME"
    echo "Date: $(date)"
    echo ""
    echo "I primarily use $TOOL because it represents technical freedom."
    echo "My Philosophy: $REASON"
    echo ""
    echo "Code is knowledge. Knowledge should be free."
} > "$FILENAME"

echo "Success! Your manifesto has been saved to $FILENAME"
