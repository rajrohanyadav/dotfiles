# Dotfiles
Basic configurations for me.

## Steps to follow

##### Install homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
##### Install brew packages
```bash
brew install jq stow colima go docker uv k9s tilt wget eza kubernetes-cli neovim tmux zoxide fzf oh-my-posh zsh-autosuggestions zsh-syntax-highlighting
```

```bash
brew install --cask alacritty brave-browser firefox font-jetbrains-mono-nerd-font maccy obsidian protonvpn visual-studio-code
```

##### Clone this repo in home path (`~`)
```bash
cd ~
git clone git@github.com:rajrohanyadav/dotfiles.git
```

##### Stow the configurations
```bash
cd ~/dotfiles
stow . --adapt
```

# TODO
- [ ] Move brew packages to Brewfile
