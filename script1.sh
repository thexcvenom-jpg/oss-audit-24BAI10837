#!/bin/bash
# ============================================
# Script 1: System Identity Report
# Author: Vasu | Reg: 24BAI10837
# Course: Open Source Software | VITyarthi
# Software Audited: Git
# ============================================

# --- Variables ---
# Storing student details in variables for easy display
STUDENT_NAME="Vasu"
SOFTWARE_CHOICE="Git"

# --- Command Substitution ---
# $() runs a command and stores its output in a variable
KERNEL=$(uname -r)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATETIME=$(date '+%A, %d %B %Y %H:%M')

# --- Display ---
# echo prints each line to the terminal
echo "========================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "   Software: $SOFTWARE_CHOICE"
echo "========================================"
echo ""
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $DATETIME"
echo ""
echo "OS License   : The Linux kernel is licensed under GPL v2"
echo "Git License  : Git is licensed under GPL v2"
echo "========================================"
