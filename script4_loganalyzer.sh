#!/bin/bash
# Script 4: Log File Analyzer
# Author: Naman Choudhary 
# Course: Open Source Software [cite: 632, 633]
# Usage: ./log_analyzer.sh /var/log/syslog [keyword] [cite: 634]

LOGFILE=$1 # First argument: log file path [cite: 635]
KEYWORD=${2:-"error"} # Second argument: keyword (default: error) [cite: 636]
COUNT=0 # Counter variable [cite: 637]

# --- Validate that the log file exists ---
if [ ! -f "$LOGFILE" ]; then [cite: 640]
    echo "Error: File \"$LOGFILE\" not found." [cite: 641]
    echo "Usage: $0 /path/to/logfile [keyword]" [cite: 642]
    exit 1 [cite: 643]
fi

echo "Analysing: $LOGFILE" [cite: 645]
echo "Keyword: $KEYWORD" [cite: 646]
echo "-------------------------------------------------------"

# --- Read log file line by line ---
while IFS= read -r LINE; do [cite: 649]
    if echo "$LINE" | grep -iq "$KEYWORD"; then [cite: 650]
        COUNT=$((COUNT + 1)) # Increment counter
    fi
done < "$LOGFILE" [cite: 653]

echo "Keyword '$KEYWORD' found $COUNT time(s) in $LOGFILE" [cite: 654]
echo "-------------------------------------------------------"

# --- Print last 5 matching lines for context ---
echo "Last 5 matching lines:" [cite: 657]
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5 [cite: 658]

# --- Warn if file is empty ---
if [ ! -s "$LOGFILE" ]; then [cite: 660]
    echo "Warning: Log file is empty." [cite: 661]
fi