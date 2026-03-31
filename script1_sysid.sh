#!/bin/bash
# Script 1: System Identity Report
# Author: Naman Choudhary
# Course: Open Source Software
# Purpose: Display a formatted overview of the Linux environment [cite: 513, 514, 515, 516]

# --- Variables ---
STUDENT_NAME="Naman Choudhary" [cite: 518]
SOFTWARE_CHOICE="Git" [cite: 519]

# --- Gather system info using command substitution ---
KERNEL=$(uname -r) # Kernel version [cite: 522]
USER_NAME=$(whoami) # Current user [cite: 523]
HOME_DIR=$(echo $HOME) # Home directory [cite: 524]
UPTIME=$(uptime -p) # Human-readable uptime [cite: 525]
DATE_TIME=$(date "+%A, %d %B %Y %H:%M:%S") # Formatted date [cite: 526]
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d"=" -f2 | tr -d '"') [cite: 527]

# --- Display formatted report ---
echo "=======================================================" [cite: 530]
echo "       Open Source Audit System Identity Report" [cite: 531]
echo "======================================================="
echo "Student: $STUDENT_NAME" [cite: 532]
echo "Software: $SOFTWARE_CHOICE (GPL v2)" [cite: 534]
echo "-------------------------------------------------------"
echo "Kernel Version:   $KERNEL" [cite: 535]
echo "Distribution:     $DISTRO" [cite: 536]
echo "Current User:     $USER_NAME" [cite: 537]
echo "Home Directory:   $HOME_DIR" [cite: 538]
echo "System Uptime:    $UPTIME" [cite: 539]
echo "Date/Time:        $DATE_TIME" [cite: 540]
echo "-------------------------------------------------------"
echo "The Linux kernel is licensed under GPL v2." [cite: 544]
echo "You have the freedom to run, study, share, and modify." [cite: 545]
echo "=======================================================" [cite: 546]