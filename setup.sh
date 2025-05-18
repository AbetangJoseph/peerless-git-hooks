#!/bin/bash

# Resolve the absolute path to the hooks directory
HOOKS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/hooks" && pwd)"

# Check if hooks directory exists
if [ ! -d "$HOOKS_DIR" ]; then
  echo "❌ Hooks directory not found at $HOOKS_DIR"
  echo "Make sure you're running this from the root of the peerless-git-hooks repo."
  exit 1
fi

# Set global Git config
git config --global core.hooksPath "$HOOKS_DIR"
echo "✅ Git global hooks configured to: $HOOKS_DIR"

# Confirm it's set
echo "🧪 Current global core.hooksPath: $(git config --global core.hooksPath)"

# Set hooks as executable (in case +x was lost during clone)
chmod +x "$HOOKS_DIR"/*
