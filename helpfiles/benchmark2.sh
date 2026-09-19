#!/bin/bash

# --- CHECK INPUT ---

# 1. Target Directory (Required)
if [ -z "$1" ]; then
    echo "Error: Target directory is required."
    echo "Usage: $0 <target_directory> [number_of_workers]"
    echo "Example: $0 ./my-queries 5"
    exit 1
fi
TARGET_DIR="$1"

# 2. Number of Workers (Optional, defaults to 3)
NUM_WORKERS="${2:-3}"

# --- CONFIGURATION ---

# Benchmark Settings
RUNS=3
WARMUP=1
OUTPUT_CSV="../benchmarks/benchmark-plan2-workers${NUM_WORKERS}.csv"

# Check if output file exists; if not, create header
if [ ! -f "$OUTPUT_CSV" ]; then
    echo "command,mean,stddev,median,user,system,min,max" > "$OUTPUT_CSV"
fi

echo "------------------------------------------------"
echo "Starting recursive benchmark in: $TARGET_DIR"
echo "Worker Count Label: $NUM_WORKERS"
echo "Results will be appended to: $OUTPUT_CSV"
echo "------------------------------------------------"

# Find all .sql files recursively
find "$TARGET_DIR" -type f -name "*.sql" -print0 | while IFS= read -r -d '' file; do

    echo "Benchmarking: $file"

    # Construct the specific command for this file
    CURRENT_CMD="trino --server localhost:8080 --file $file"

    # Run Hyperfine
    # --warmup: Run once to load data into cache (discarded)
    # --runs: Number of valid measurement runs
    # --export-csv: Appends results to a temp file
    hyperfine --show-output \
              --warmup "$WARMUP" \
              --runs "$RUNS" \
              --export-csv temp_results.csv \
              "$CURRENT_CMD"

    # Append the result (skipping the header) to our main CSV
    # Check if temp_results exists to avoid errors on failed runs
    if [ -f "temp_results.csv" ]; then
        tail -n +2 temp_results.csv >> "$OUTPUT_CSV"
        rm -f temp_results.csv
    fi

    echo "------------------------------------------------"

done

echo "Benchmarking complete. Data saved to $OUTPUT_CSV."
