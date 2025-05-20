#!/bin/bash
set -e
script_path=$(realpath "$(cmd "$0")")
repo_path=$(dirname "${script_path}")
# shellcheck disable=SC1091
source "${repo_path}"/.venv/bin/activate
exec python3 "${repo_path}"/chopper_plot.py "$@"
