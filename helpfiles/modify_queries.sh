#!/bin/bash

# Configuration
# Target directory defaults to current directory (.) if no argument is provided
TARGET_DIR="${1:-.}"

echo "Starting recursive search and replace in: $TARGET_DIR"

# Loop through all files in the target directory recursively
# Removed '-maxdepth 1' so it descends into subdirectories
find "$TARGET_DIR" -type f -print0 | while IFS= read -r -d '' file; do

    echo "Processing $file..."

    # --- Step 1: Handle CASSANDRA Tables ---
    # Tables: store_sales, store_returns, web_sales, catalog_sales
    # Target: cassandra.db_cassandra
    sed -i 's/\${database}\.\${schema}\.store_sales/cassandra.db_cassandra.store_sales/g' "$file"
    sed -i 's/\${database}\.\${schema}\.store_returns/cassandra.db_cassandra.store_returns/g' "$file"
    sed -i 's/\${database}\.\${schema}\.web_sales/cassandra.db_cassandra.web_sales/g' "$file"
    sed -i 's/\${database}\.\${schema}\.catalog_sales/cassandra.db_cassandra.catalog_sales/g' "$file"

    # --- Step 2: Handle IGNITE Tables ---
    # Tables: inventory, item, warehouse
    # Target: ignite.public
    sed -i 's/\${database}\.\${schema}\.inventory/ignite.public.inventory/g' "$file"
    sed -i 's/\${database}\.\${schema}\.item/ignite.public.item/g' "$file"
    sed -i 's/\${database}\.\${schema}\.warehouse/ignite.public.warehouse/g' "$file"

    # --- Step 3: Handle MARIADB Tables (The Catch-All) ---
    # Target: mariadb.db_infsystems
    # Logic: Any pattern matching "mariadb.db_infsystems.ANY_TABLE" that wasn't
    # matched in Steps 1 or 2 will be caught here.
    sed -i -E 's/\$\{database\}\.\$\{schema\}\.([a-zA-Z0-9_]+)/mariadb.db_infsystems.\1/g' "$file"

done

echo "Recursive replacement complete."
