#!/bin/bash

shopt -s nullglob

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
