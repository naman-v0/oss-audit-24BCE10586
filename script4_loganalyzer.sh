#!/bin/bash
# Script 4: Log File Analyzer
# Author: Naman Choudhary
# Course: Open Source Software
# Usage: ./script4_loganalyzer.sh /var/log/syslog [keyword]

LOGFILE=$1 # First argument: log file path
KEYWORD=${2:-"error"} # Second argument: keyword (default: error)
COUNT=0 # Counter variable

# --- Validate that the log file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File \"$LOGFILE\" not found."
    echo "Usage: $0 /path/to/logfile [keyword]"
    exit 1
fi

echo "Analysing: $LOGFILE"
echo "Keyword: $KEYWORD"
echo "-------------------------------------------------------"

# --- Read log file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1)) # Increment counter
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT time(s) in $LOGFILE"
echo "-------------------------------------------------------"

# --- Print last 5 matching lines for context ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

# --- Warn if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: Log file is empty."
fi
