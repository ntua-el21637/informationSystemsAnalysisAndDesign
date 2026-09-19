#!/bin/bash

# Configuration
TARGET_DIR="${1:-.}"

echo "Processing files in: $TARGET_DIR"
echo "Performing: Remove Windows characters (^M) + Append Semicolon if missing."

# Loop recursively through all files
find "$TARGET_DIR" -type f -print0 | while IFS= read -r -d '' file; do

    echo "Updating $file..."

    # EXPLANATION OF SED COMMAND:
    # 1. 's/\r//g'      -> Global remove of Carriage Returns (Fixes the ^M issue)
    # 2. '${...}'       -> Apply the following block only to the last line
    # 3. '/;$/!s/$/;/'  -> If the line does NOT end in ';', append ';'

    sed -i 's/\r//g; ${/;$/!s/$/;/}' "$file"

done

echo "Done. Files are now Unix-formatted and end with semicolons."
