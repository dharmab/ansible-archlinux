#!/bin/bash
mirrorlist=/etc/pacman.d/mirrorlist

if find $mirrorlist -mtime +1 | grep -q '.'; then
  echo "Updating $mirrorlist..."
  reflector \
	--protocol https \
    --country "United States" \
    --latest 32 \
	--sort rate \
	--save $mirrorlist
fi
echo "$mirrorlist is up to date!"
