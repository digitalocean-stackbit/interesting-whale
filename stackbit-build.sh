#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://localhost:8092/init.js 602ee802e19f9ca5354d4e3e

echo "stackbit-build.sh: finished build"
