#!/bin/bash
# ============================================
# Script 4: Log File Analyzer
# Author: Vasu | Reg: 24BAI10837
# Course: Open Source Software | VITyarthi
# Usage: ./script4_log_analyzer.sh /var/log/syslog error
# ============================================

# --- Command Line Arguments ---
# $1 is the first argument — the log file path
# $2 is the second argument — keyword to search for
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default to 'error' if no keyword given
COUNT=0                  # Counter variable starts at zero

# --- Input Validation ---
# Check if user provided a filename
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    echo "Example: $0 /var/log/syslog error"
    exit 1
fi

# Check if the file actually exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

echo "Scanning: $LOGFILE"
echo "Keyword : $KEYWORD"
echo "---"

# --- While Read Loop ---
# Reads the file one line at a time
# IFS= preserves whitespace, -r prevents backslash interpretation
while IFS= read -r LINE; do

    # if statement checks each line for the keyword
    # grep -iq makes the search case-insensitive and quiet
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment counter each time keyword is found
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

# --- Summary ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# Show last 5 matching lines using grep and tail
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching lines:"
    echo "---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -5
else
    echo "No matches found for '$KEYWORD'."
fi
