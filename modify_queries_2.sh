#!/bin/bash

# Configuration
# Target directory defaults to current directory (.) if no argument is provided
TARGET_DIR="${1:-.}"

echo "Starting recursive search and replace in: $TARGET_DIR"

# Loop through all files in the target directory recursively
find "$TARGET_DIR" -type f -print0 | while IFS= read -r -d '' file; do

    echo "Processing $file..."

    # --- Step 1: Handle CASSANDRA Tables ---
    sed -i 's/\${database}\.\${schema}\.store_sales/cassandra.db_cassandra.store_sales/g' "$file"
    sed -i 's/\${database}\.\${schema}\.store_returns/cassandra.db_cassandra.store_returns/g' "$file"
    sed -i 's/\${database}\.\${schema}\.catalog_sales/cassandra.db_cassandra.catalog_sales/g' "$file"
    sed -i 's/\${database}\.\${schema}\.web_sales/cassandra.db_cassandra.web_sales/g' "$file"

    # --- Step 2: Handle IGNITE Tables ---
    sed -i 's/\${database}\.\${schema}\.inventory/ignite."public".inventory/g' "$file"
    sed -i 's/\${database}\.\${schema}\.customer/ignite."public".customer/g' "$file"
    sed -i 's/\${database}\.\${schema}\.date_dim/ignite."public".date_dim/g' "$file"
    sed -i 's/\${database}\.\${schema}\.store/ignite."public".store/g' "$file"

    # --- Step 3: Handle MARIADB Tables (The Catch-All) ---
    sed -i -E 's/\$\{database\}\.\$\{schema\}\.([a-zA-Z0-9_]+)/mariadb.db_infsystems.\1/g' "$file"

done

echo "Recursive replacement complete."
