#!/bin/bash

# Configuration
# Target directory defaults to current directory (.) if no argument is provided
TARGET_DIR="${1:-.}"

echo "Starting recursive search and replace in SQL files: $TARGET_DIR"

# Loop through all SQL files in the target directory recursively
find "$TARGET_DIR" -type f -name "*.sql" -print0 | while IFS= read -r -d '' file; do

    echo "Processing $file..."

    # --- Replace IGNITE customer_address with MARIADB ---
    sed -i 's/ignite\."public"\.customer_address/mariadb.db_infsystems.customer_address/g' "$file"

done

echo "Recursive replacement complete."
