#!/bin/bash

project_root="$(git rev-parse --show-toplevel)"

exit_code=0
poetry run ansible-lint "$project_root/site.yml" || exit_code=$?

exit $exit_code
