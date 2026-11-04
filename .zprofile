eval "$(/opt/homebrew/bin/brew shellenv)"
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/ed25519.pub


# Created by `pipx` on 2025-01-17 05:18:42
export PATH="$PATH:/Users/rohanyadav/.local/bin"

# machine-local settings and secrets (not tracked)
[ -f ~/.zprofile.local ] && source ~/.zprofile.local
