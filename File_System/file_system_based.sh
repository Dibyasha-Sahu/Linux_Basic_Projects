#!/bin/bash

# File System Organizer Script
# This script creates folders and organizes files by type

echo "Organizing files in current directory: $(pwd)"

# Create folders if they don't exist
mkdir -p Images Documents Scripts Others

# Move files based on extension
mv *.jpg Images/ 2>/dev/null
mv *.png Images/ 2>/dev/null
mv *.jpeg Images/ 2>/dev/null

mv *.pdf Documents/ 2>/dev/null
mv *.txt Documents/ 2>/dev/null
mv *.docx Documents/ 2>/dev/null

mv *.sh Scripts/ 2>/dev/null

# Move everything else
for file in *; do
  if [ -f "$file" ]; then
    case "$file" in
      *.jpg|*.png|*.jpeg|*.pdf|*.txt|*.docx|*.sh) ;;
      *) mv "$file" Others/ ;;
    esac
  fi
done

echo "✅ Files organized successfully!"