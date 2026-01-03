#!/usr/bin/env sh
echo "Current directory: $(pwd)"

if [ -f ./devcon-alp/src/.devcon-alp ]; then
    BASEDIR=$(pwd)
elif [ -f ./src/.devcon-alp ]; then
    cd .. && BASEDIR=$(pwd)
else
    echo "Can't find files, please run from project or submodule root"
    exit 1
fi

# Remove old dirs
if rm -rf "$BASEDIR/.devcontainer"; then
    echo "Removed old .devcontainer directory"
else
    echo "Failed to remove old .devcontainer directory"
    echo "Exiting..."
    exit 1
fi

# Copy the new files
if cp -r "$BASEDIR/devcon-alp/src/" ./.devcontainer/; then
    echo "Copied files to .devcontainer directory"
else
    echo "Failed to copy files to .devcontainer directory"
    echo "Exiting..."
    exit 1
fi