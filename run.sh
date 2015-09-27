#!/bin/bash
script_dir=$(dirname ${0})
playbook_path="${script_dir}/site.yml"

ansible-playbook --connection=local --ask-sudo-pass "${playbook_path}"
