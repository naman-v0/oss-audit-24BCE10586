#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Naman Choudhary
# Course: Open Source Software
# Purpose: Interactively generate and save a personal OSS philosophy statement

echo "======================================================="
echo "           Open Source Manifesto Generator"
echo "       Answer three questions to create your statement."
echo "======================================================="
echo ""

# --- Gather user input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Capture date and create output filename ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Compose and write manifesto to file ---
> "$OUTPUT" # Clear or create the file
echo "Open Source Manifesto | Generated on $DATE" >> "$OUTPUT"
echo "=======================================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Build the paragraph by concatenating variables
PARA="I believe in the power of open tools. Every day I rely on $TOOL "
PARA+="software that I can read, modify, and share, without asking permission. "
PARA+="To me, freedom means $FREEDOM. In the same spirit, I commit to one day "
PARA+="building $BUILD and releasing it to the world under a free licence, "
PARA+="so that others can stand on my work as I have stood on the work of others."

echo "$PARA" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Signed: $(whoami) | Date: $DATE" >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo "-------------------------------------------------------"
cat "$OUTPUT"
