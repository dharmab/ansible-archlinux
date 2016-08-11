#!/bin/bash
script_dir=$(dirname ${0})
playbook_path="${script_dir}/site.yml"
library_dir="$script_dir/library"

aur_module_download_url='https://raw.githubusercontent.com/pigmonkey/ansible-aur/master/aur'

if [[ ! -f "$library_dir/aur" ]]; then
    echo "Downloading ansible-aur..."
    curl -s -o "$library_dir/aur" "$aur_module_download_url"
fi
ansible-playbook --connection=local --ask-sudo-pass "${playbook_path}"
