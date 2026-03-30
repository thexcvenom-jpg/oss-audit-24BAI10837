#!/bin/bash
# ============================================
# Script 3: Disk and Permission Auditor
# Author: Vasu | Reg: 24BAI10837
# Course: Open Source Software | VITyarthi
# ============================================

# --- Array ---
# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "       Directory Audit Report"
echo "========================================"
echo ""

# --- For Loop ---
# Loops through each directory in the array
for DIR in "${DIRS[@]}"; do

    # Check if the directory exists before auditing
    if [ -d "$DIR" ]; then
        # awk extracts permission string, owner and group from ls output
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')

        # du gets disk usage, cut removes the path leaving just the size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Directory : $DIR"
        echo "Permissions: $PERMS"
        echo "Size      : $SIZE"
        echo "---"
    else
        echo "$DIR does not exist on this system"
        echo "---"
    fi
done

# --- Git Config Check ---
# Additional check specific to our audited software
echo ""
echo "========================================"
echo "       Git Configuration Check"
echo "========================================"

GIT_CONFIG="$HOME/.gitconfig"

# Check if Git's user config file exists
if [ -f "$GIT_CONFIG" ]; then
    echo "Git config found at: $GIT_CONFIG"
    echo ""
    # ls -l shows permissions, owner and size of the config file
    ls -l "$GIT_CONFIG"
    echo ""
    echo "Config contents:"
    cat "$GIT_CONFIG"
else
    echo "No Git config found at $GIT_CONFIG"
    echo "Run: git config --global user.name 'Your Name'"
fi
