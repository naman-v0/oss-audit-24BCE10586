#!/bin/bash
# Script 1: System Identity Report
# Author: Naman Choudhary
# Course: Open Source Software
# Purpose: Display a formatted overview of the Linux environment

# --- Variables ---
STUDENT_NAME="Naman Choudhary"
SOFTWARE_CHOICE="Git"

# --- Gather system info using command substitution ---
KERNEL=$(uname -r) 
USER_NAME=$(whoami) 
HOME_DIR=$HOME
UPTIME="Running via Git Bash"
DATE_TIME=$(date "+%A, %d %B %Y %H:%M:%S")
# Fallback for Windows environment
DISTRO=$(uname -o)

# --- Display formatted report ---
echo "======================================================="
echo "       Open Source Audit System Identity Report"
echo "======================================================="
echo "Student:  $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE (GPL v2)"
echo "-------------------------------------------------------"
echo "Kernel Version:   $KERNEL"
echo "Distribution:     $DISTRO"
echo "Current User:     $USER_NAME"
echo "Home Directory:   $HOME_DIR"
echo "System Uptime:    $UPTIME"
echo "Date/Time:        $DATE_TIME"
echo "-------------------------------------------------------"
echo "The Linux kernel is licensed under GPL v2."
echo "You have the freedom to run, study, share, and modify."
echo "======================================================="
