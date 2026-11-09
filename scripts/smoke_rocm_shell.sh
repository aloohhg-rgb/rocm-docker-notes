#!/usr/bin/env bash
# Spin the bare ROCm shell compose and print rocminfo head.
set -euo pipefail
cd "$(dirname "$0")/.."
docker compose -f compose/rocm-shell.yml run --rm rocm-shell \
  bash -lc 'rocminfo 2>/dev/null | head -40 || echo "rocminfo failed — check devices/groups"'
