#!/bin/bash

# DevOps Command Dictionary Search

echo -n "Enter keyword to search (e.g., git, docker, k8s, ls): "
read keyword

# Search the commands.txt file for the keyword
grep -i "$keyword" commands.txt

# If nothing found, show a hint
if [ $? -ne 0 ]; then
  echo "❌ No commands found for '$keyword'. Try another keyword."
fi
