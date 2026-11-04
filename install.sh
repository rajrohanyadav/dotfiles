#!/usr/bin/env bash
# Bootstrap a new machine: Homebrew, packages from the Brewfile, then symlinks via stow.
set -euo pipefail

cd "$(dirname "$0")"

if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle --file=Brewfile

# stow aborts on conflicts instead of overwriting; move any existing files out of the way first
mkdir -p ~/.config
stow --restow --target="$HOME" .

[ -f ~/.zprofile.local ] || touch ~/.zprofile.local
herdr config check
