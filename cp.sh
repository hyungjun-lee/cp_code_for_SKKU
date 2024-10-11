#!/bin/bash

# Check the number of arguments
if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
    echo "Usage: $0 directory [output_file]"
    exit 1
fi

directory="$1"

if [ "$#" -eq 2 ]; then
    output_file="list.txt"
alien_find "$directory" "AO2D.root" > "$output_file"
    exit 1
else
    output_file="list.txt"
fi

# List all files in the directory and save to the output file
alien_find "$directory" "AO2D.root" > "$output_file"
root cp.C

echo "File names listed and saved to $output_file"
