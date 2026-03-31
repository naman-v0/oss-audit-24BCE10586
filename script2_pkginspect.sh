#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Naman Choudhary
# Course: Open Source Software
# Purpose: Detect installed OSS package and describe its philosophy

PACKAGE="git" # The package we are auditing

# --- Detect package manager and check installation ---
if command -v rpm &>/dev/null; then
    # RPM-based system (Fedora, CentOS, RHEL)
    if rpm -q $PACKAGE &>/dev/null; then
        echo "$PACKAGE is installed (RPM system)."
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    else
        echo "$PACKAGE is NOT installed. Run: sudo dnf install $PACKAGE"
    fi
elif command -v dpkg &>/dev/null; then
    # Debian/Ubuntu-based system
    if dpkg -l $PACKAGE 2>/dev/null | grep -q '^ii'; then
        echo "$PACKAGE is installed (DEB system)."
        dpkg -l $PACKAGE | grep '^ii'
        git --version
    else
        echo "$PACKAGE is NOT installed. Run: sudo apt install $PACKAGE"
    fi
fi

echo "-------------------------------------------------------"

# --- Case statement: print philosophy note by package name ---
case $PACKAGE in
    git) echo "Git: born from crisis - the tool Linus built when proprietary failed him." ;;
    httpd) echo "Apache: the web server that built the open internet." ;;
    mysql) echo "MySQL: open source at the heart of millions of apps." ;;
    firefox) echo "Firefox: a nonprofit fighting for an open, user-controlled web." ;;
    vlc) echo "VLC: built by students, plays everything, owned by everyone." ;;
    *) echo "Unknown package. Check its licence before you trust it." ;;
esac
