#!/bin/bash
set -e

REPO_URL="https://github.com/AbetangJoseph/peerless-git-hooks.git"
TMP_DIR="$(mktemp -d)"

echo "📥 Cloning peerless-git-hooks..."
git clone "$REPO_URL" "$TMP_DIR"

cd "$TMP_DIR"
./setup.sh

echo "✅ Hooks installed globally."
rm -rf "$TMP_DIR"
