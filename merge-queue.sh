#!/bin/bash

shopt -s nullglob

echo "MQ event on branch: $1"

files=( *.txt )

if [ ${#files[@]} -eq 0 ]; then
    echo 'No .txt file found'
    exit 0
fi

if grep -q 'false' "${files[@]}"; then
    echo 'False found'
    exit 1
else
    echo 'False not found'
    exit 0
fi
