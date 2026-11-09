#!/usr/bin/env bash
# Pull whatever images the compose files currently reference.
# Edit tags first if they've bitrotted.
set -euo pipefail
cd "$(dirname "$0")/.."
echo "pulling rocm shell base…"
docker pull rocm/dev-ubuntu-22.04:latest || true
echo "NOTE: vLLM / llama.cpp HIP images are placeholders — pull your chosen tags manually."
