#!/bin/bash
mirrorlist=/etc/pacman.d/mirrorlist

if find $mirrorlist -mtime +1 | grep -q '.'; then
    echo "Updating $mirrorlist..."
    if ! reflector \
        --protocol https \
        --country "United States" \
        --latest 32 \
        --sort rate \
        --save $mirrorlist; then
        echo "Unable to update $mirrorlist"
        exit 1
    fi
fi
echo "$mirrorlist is up to date!"
