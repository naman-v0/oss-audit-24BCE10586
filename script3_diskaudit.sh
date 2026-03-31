#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Naman Choudhary  
# Course: Open Source Software [cite: 593, 594]
# Purpose: Audit permissions and disk usage of key Linux directories [cite: 595]

# Array of directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/share/git-core") [cite: 597]

echo "=======================================================" [cite: 598]
echo "                Directory Audit Report" [cite: 599]
echo "=======================================================" [cite: 600]

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do [cite: 603]
    if [ -d "$DIR" ]; then [cite: 604]
        # Extract permissions, owner, group using awk [cite: 605]
        PERMS=$(ls -ld "$DIR" | awk '{print $1}') [cite: 606]
        OWNER=$(ls -ld "$DIR" | awk '{print $3}') [cite: 607]
        GROUP=$(ls -ld "$DIR" | awk '{print $4}') [cite: 608]
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1) [cite: 609]

        echo "Dir: $DIR" [cite: 610]
        echo "Perms: $PERMS | Owner: $OWNER | Group: $GROUP | Size: $SIZE" [cite: 611]
        echo "-------------------------------------------------------"
    else
        echo "$DIR does not exist on this system." [cite: 613]
        echo "-------------------------------------------------------"
    fi
done [cite: 617]

# --- Extra: check Git's config file permissions ---
GIT_CONFIG="$HOME/.gitconfig" [cite: 619]

if [ -f "$GIT_CONFIG" ]; then [cite: 620]
    echo "Git config file found: $GIT_CONFIG" [cite: 621]
    ls -l "$GIT_CONFIG" [cite: 622]
else
    echo "No ~/.gitconfig found. Run: git config --global user.name \"Name\"" [cite: 624]
fi