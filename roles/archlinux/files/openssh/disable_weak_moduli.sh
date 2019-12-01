#!/bin/bash
# https://infosec.mozilla.org/guidelines/openssh#modern-openssh-67

temp_file=$(mktemp)

awk '$5 >= 2047' /etc/ssh/moduli > "$temp_file" && mv "$temp_file" /etc/ssh/moduli
