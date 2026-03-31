#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Naman Choudhary
# Course: Open Source Software
# Purpose: Audit permissions and disk usage of key Linux directories

# Array of directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/share/git-core")

echo "======================================================="
echo "                Directory Audit Report"
echo "======================================================="

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Dir: $DIR"
        echo "Perms: $PERMS | Owner: $OWNER | Group: $GROUP | Size: $SIZE"
        echo "-------------------------------------------------------"
    else
        echo "$DIR does not exist on this system."
        echo "-------------------------------------------------------"
    fi
done

# --- Extra: check Git's config file permissions ---
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    echo "Git config file found: $GIT_CONFIG"
    ls -l "$GIT_CONFIG"
else
    echo "No ~/.gitconfig found. Run: git config --global user.name \"Name\""
fi
