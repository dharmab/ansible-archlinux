#!/bin/bash

project_root="$(git rev-parse --show-toplevel)"

exit_code=0

poetry run yamllint "$project_root" || exit_code=$?
poetry run ansible-lint -qq "$project_root/site.yml" || exit_code=$?

exit $exit_code
