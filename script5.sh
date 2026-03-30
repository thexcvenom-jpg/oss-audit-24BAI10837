#!/bin/bash
# ============================================
# Script 5: Open Source Manifesto Generator
# Author: Vasu | Reg: 24BAI10837
# Course: Open Source Software | VITyarthi
# ============================================

# --- alias concept (demonstrated via comment) ---
# In a real session you might run: alias gen='./script5_manifesto.sh'
# Aliases create shortcuts for commands — a core shell concept

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "========================================"
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- read ---
# read captures input typed by the user and stores it in a variable
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- date command ---
# Fetches current date and formats it
DATE=$(date '+%d %B %Y')

# --- Output file ---
# whoami gets current username to make filename unique per user
OUTPUT="manifesto_$(whoami).txt"

# --- String concatenation ---
# Building the manifesto paragraph by combining variables and fixed text
MANIFESTO="======================================
Open Source Manifesto
Generated on: $DATE
======================================

I believe in the power of open tools. Every day I rely on $TOOL —
software built by people who chose to share rather than lock away
their work. To me, freedom means $FREEDOM. That is the spirit that
drives the open-source movement.

If I could build and share one thing freely with the world, it would
be $BUILD. Not for profit, not for recognition — but because open
source taught me that knowledge grows when it is given away freely.

Git taught me this. One tool, built in ten days by one person who
was frustrated enough to act, now powers the entire world's software
development. That is what open source makes possible.

This is my commitment: to use, to learn, and to give back.

-- $(whoami) | $DATE
======================================"

# --- Writing to file ---
# > operator creates or overwrites the output file
echo "$MANIFESTO" > "$OUTPUT"

echo ""
echo "--- Your Manifesto ---"
echo ""

# --- cat ---
# Reads and displays the saved file
cat "$OUTPUT"

echo ""
echo "Manifesto saved to: $OUTPUT"
