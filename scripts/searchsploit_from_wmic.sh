#!/bin/bash
# search_from_wmic.sh
# Usage: ./search_from_wmic.sh installed_wmic.csv results.txt
# First, collect software info via
# wmic product get name,version,vendor /format:csv > C:\Temp\installed_wmic.csv

if [ $# -ne 2 ]; then
  echo "Usage: $0 installed_wmic.csv results.txt"
  exit 1
fi

INPUT="$1"
OUT="$2"
> "$OUT"

# skip header, parse CSV (Node,Name,Version,Vendor)
tail -n +2 "$INPUT" | while IFS=, read -r node name version vendor; do
  # trim quotes and whitespace
  name=$(echo "$name" | sed -e 's/^"//' -e 's/"$//' | sed 's/^[ \t]*//;s/[ \t]*$//')
  version=$(echo "$version" | sed -e 's/^"//' -e 's/"$//' | sed 's/^[ \t]*//;s/[ \t]*$//')
  vendor=$(echo "$vendor" | sed -e 's/^"//' -e 's/"$//' | sed 's/^[ \t]*//;s/[ \t]*$//')
  q="$name $version"
  echo "=== Query: $q ===" >> "$OUT"
  # Call searchsploit - it prints human readable output
  searchsploit "$q" >> "$OUT" 2>&1
  echo -e "\n" >> "$OUT"
done

echo "Done. Results in $OUT"

