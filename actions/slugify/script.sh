#!/usr/bin/env bash

set -euo pipefail

if [[ -z ${1:-} ]]; then
  echo "Usage: $0 <path>"
  exit 1
fi

path="${1,,}"
path="${path// /}"
path="${path//./}"
path="${path#/}"
path="${path%/}"
path="${path////-}"

echo "slug=${path}" >>"${GITHUB_OUTPUT}"
