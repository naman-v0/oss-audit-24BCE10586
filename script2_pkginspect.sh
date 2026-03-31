#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Naman Choudhary 
# Course: Open Source Software [cite: 554, 555]
# Purpose: Detect installed OSS package and describe its philosophy [cite: 556]

PACKAGE="git" # The package we are auditing [cite: 557]

# --- Detect package manager and check installation ---
if command -v rpm &>/dev/null; then [cite: 560]
    # RPM-based system (Fedora, CentOS, RHEL) [cite: 561]
    if rpm -q $PACKAGE &>/dev/null; then [cite: 562]
        echo "$PACKAGE is installed (RPM system)." [cite: 563]
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary' [cite: 564]
    else
        echo "$PACKAGE is NOT installed. Run: sudo dnf install $PACKAGE" [cite: 566]
    fi
elif command -v dpkg &>/dev/null; then [cite: 568]
    # Debian/Ubuntu-based system [cite: 569]
    if dpkg -l $PACKAGE 2>/dev/null | grep -q '^ii'; then [cite: 570]
        echo "$PACKAGE is installed (DEB system)." [cite: 571]
        dpkg -l $PACKAGE | grep '^ii' [cite: 572]
        git --version [cite: 573]
    else
        echo "$PACKAGE is NOT installed. Run: sudo apt install $PACKAGE" [cite: 575]
    fi
fi

echo "-------------------------------------------------------"

# --- Case statement: print philosophy note by package name ---
case $PACKAGE in [cite: 578]
    git) echo "Git: born from crisis - the tool Linus built when proprietary failed him." ;; [cite: 581]
    httpd) echo "Apache: the web server that built the open internet." ;; [cite: 582]
    mysql) echo "MySQL: open source at the heart of millions of apps." ;; [cite: 583]
    firefox) echo "Firefox: a nonprofit fighting for an open, user-controlled web." ;; [cite: 584]
    vlc) echo "VLC: built by students, plays everything, owned by everyone." ;; [cite: 585]
    *) echo "Unknown package. Check its licence before you trust it." ;; [cite: 586]
esac [cite: 587]