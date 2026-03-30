#!/bin/bash
# ============================================
# Script 2: FOSS Package Inspector
# Author: Vasu | Reg: 24BAI10837
# Course: Open Source Software | VITyarthi
# ============================================

# --- Variable ---
# The package we want to inspect
PACKAGE="git"

# --- if-then-else ---
# Check if the package is installed using dpkg
# &>/dev/null suppresses all output — we only want the exit code
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    echo ""

    # Display version information
    # grep -E filters lines matching Version, License or Summary
    echo "--- Package Details ---"
    git --version
    dpkg -l $PACKAGE | grep "^ii"

else
    # If package is not found, suggest installation command
    echo "$PACKAGE is NOT installed."
    echo "To install, run: sudo apt install git"
fi

echo ""
echo "--- Philosophy Note ---"

# --- Case Statement ---
# Prints a philosophy note based on the package name
case $PACKAGE in
    git)
        echo "Git: Born in 2005 when proprietary tools failed the open-source world."
        ;;
    httpd|apache2)
        echo "Apache: The web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of applications."
        ;;
    vlc)
        echo "VLC: Proof that students can build tools the whole world uses."
        ;;
    *)
        # Default case — runs if no other case matches
        echo "Every great tool has an open-source story behind it."
        ;;
esac
