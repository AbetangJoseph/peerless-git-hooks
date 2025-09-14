#!/bin/bash
set -e

# Where to permanently store your hooks
TARGET_DIR="$HOME/.git-hooks/peerless"

echo "📂 Setting up global hooks..."

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy the hooks folder (pre-commit, pre-push, etc.)
cp -r hooks "$TARGET_DIR/"

# Point Git to use this directory globally
git config --global core.hooksPath "$TARGET_DIR/hooks"

# Make sure hooks are executable
chmod +x "$TARGET_DIR/hooks/"*

echo "✅ Global hooks installed at: $TARGET_DIR/hooks"
echo "ℹ️  Git is now configured to use these hooks for ALL repos."
