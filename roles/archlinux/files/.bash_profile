#!/bin/bash

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  startx; exit
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
