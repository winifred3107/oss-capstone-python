#!/bin/bash
# Script 2: FOSS Package Inspector
# Purpose: Checks for Python3 and describes its role

SOFTWARE="python3"

echo "Checking for $SOFTWARE..."

if command -v $SOFTWARE &> /dev/null
then
    VERSION=$($SOFTWARE --version)
    echo "Status: $SOFTWARE is INSTALLED."
    echo "Version: $VERSION"
    
    # Case statement to describe the software
    case $SOFTWARE in
        python3)
            echo "Description: A high-level, interpreted programming language for general-purpose programming."
            ;;
        *)
            echo "Description: Open-source software component."
            ;;
    esac
else
    echo "Status: $SOFTWARE is NOT installed. Please install it using sudo apt install $SOFTWARE."
fi
