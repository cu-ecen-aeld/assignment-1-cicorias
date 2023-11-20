#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

# Assign the arguments to variables
filesdir="$1"
searchstr="$2"

# Check if filesdir is a valid directory
if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a valid directory."
    exit 1
fi

# Find the number of files and matching lines
file_count=$(find "$filesdir" -type f | wc -l)
matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the results
echo "The number of files are $file_count and the number of matching lines are $matching_lines"
