#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Naman Choudhary 
# Course: Open Source Software [cite: 668, 669]
# Purpose: Interactively generate and save a personal OSS philosophy statement [cite: 670]

echo "=======================================================" [cite: 672]
echo "           Open Source Manifesto Generator" [cite: 675]
echo "       Answer three questions to create your statement." [cite: 676]
echo "=======================================================" [cite: 677]
echo ""

# --- Gather user input ---
read -p "1. Name one open-source tool you use every day: " TOOL [cite: 680]
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM [cite: 682]
read -p "3. Name one thing you would build and share freely: " BUILD [cite: 683]

# --- Capture date and create output filename ---
DATE=$(date '+%d %B %Y') [cite: 687]
OUTPUT="manifesto_$(whoami).txt" [cite: 688]

# --- Compose and write manifesto to file ---
> "$OUTPUT" # Clear or create the file [cite: 691]
echo "Open Source Manifesto | Generated on $DATE" >> "$OUTPUT" [cite: 694]
echo "=======================================================" >> "$OUTPUT" [cite: 696]
echo "" >> "$OUTPUT"

# Build the paragraph by concatenating variables
PARA="I believe in the power of open tools. Every day I rely on $TOOL " [cite: 701]
PARA+="software that I can read, modify, and share, without asking permission. " [cite: 701]
PARA+="To me, freedom means $FREEDOM. In the same spirit, I commit to one day " [cite: 702]
PARA+="building $BUILD and releasing it to the world under a free licence, " [cite: 702]
PARA+="so that others can stand on my work as I have stood on the work of others." [cite: 703]

echo "$PARA" >> "$OUTPUT" [cite: 704]
echo "" >> "$OUTPUT" [cite: 705]
echo "Signed: $(whoami) | Date: $DATE" >> "$OUTPUT" [cite: 706]

echo ""
echo "Manifesto saved to $OUTPUT" [cite: 708]
echo "-------------------------------------------------------"
cat "$OUTPUT" [cite: 710]