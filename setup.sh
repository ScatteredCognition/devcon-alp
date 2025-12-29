#!/usr/bin/env sh
echo "Current directory: $(pwd)"
VARIANT="base"
rm -rf .devcontainer
cp -r "./devcontainers/$VARIANT/" ./.devcontainer/
