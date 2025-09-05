#!/bin/zsh

# Simple script to convert README.md to PDF

# Input file (default: README.md)
INPUT_FILE="${1:-README.md}"

# Output file name (default: README.pdf)
OUTPUT_FILE="${2:-README.pdf}"

# Check if input exists
if [[ ! -f "$INPUT_FILE" ]]; then
  echo "❌ File not found: $INPUT_FILE"
  exit 1
fi

# Run pandoc to convert
echo "📄 Converting $INPUT_FILE → $OUTPUT_FILE ..."
pandoc "$INPUT_FILE" -o "$OUTPUT_FILE" --pdf-engine=xelatex

# Check if successful
if [[ $? -eq 0 ]]; then
  echo "✅ Conversion complete: $OUTPUT_FILE"
else
  echo "⚠️ Conversion failed"
fi
