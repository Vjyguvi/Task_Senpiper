#!/bin/bash
echo "Please enter a string:"
read input_string
open_count=$(echo "$input_string" | grep -o '{' | wc -l)
close_count=$(echo "$input_string" | grep -o '}' | wc -l)
if [[ "$open_count" -eq "$close_count" ]]; then
echo "True"
else
echo "False"
fi