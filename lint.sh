#!/bin/bash

project_root="$(git rev-parse --show-toplevel)"

exit_code=0

uv run ansible-lint -qq "$project_root/site.yml" || exit_code=$?

exit $exit_code
