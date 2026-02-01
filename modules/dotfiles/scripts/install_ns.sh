#!/bin/bash

# Script to create symlink for ns.py in /usr/bin
# This script requires sudo privileges to create symlink in /usr/bin

set -e

SOURCE_FILE="$HOME/.config/arch-config/modules/dotfiles/dotfiles/niri/scripts/ns.py"
TARGET_FILE="/usr/bin/ns.py"

if [ ! -f "$SOURCE_FILE" ]; then
  echo "Error: Source file $SOURCE_FILE not found"
  exit 1
fi

echo "Creating symlink from $SOURCE_FILE to $TARGET_FILE..."
sudo ln -sf "$SOURCE_FILE" "$TARGET_FILE"

echo "Successfully created symlink for ns.py in /usr/bin"
