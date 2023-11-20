#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

# Assign the arguments to variables
writefile="$1"
writestr="$2"

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write the content to the specified file
echo "$writestr" > "$writefile"

# Check if the write operation was successful
if [ $? -eq 0 ]; then
    echo "File '$writefile' created with content:"
    echo "$writestr"
else
    echo "Error: Unable to create or write to '$writefile'"
    exit 1
fi
