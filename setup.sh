#!/usr/bin/env bash
echo "Current directory: $(pwd)"
rm -rf .devcontainer
cp -r "./devcontainers/$1/" ./.devcontainer/
