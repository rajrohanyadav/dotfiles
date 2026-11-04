# Dotfiles
Basic configurations for me. Managed with [GNU Stow](https://www.gnu.org/software/stow/): the repo mirrors `~`, and stow symlinks each file into place.

## Setup
```bash
git clone git@github.com:rajrohanyadav/dotfiles.git ~/dotfiles
~/dotfiles/install.sh
```

`install.sh` installs Homebrew if missing, runs `brew bundle` against the [Brewfile](Brewfile), then stows everything into `~`. It is safe to re-run. Stow stops on conflicts rather than overwriting, so move any existing config out of the way first.

Manual equivalents:
```bash
brew bundle --file=~/dotfiles/Brewfile
cd ~/dotfiles && stow --restow .
```

## What's in here
| Path | Tool |
| --- | --- |
| `.config/nvim` | Neovim (NvChad v2.5) |
| `.config/herdr` | [herdr](https://herdr.dev) terminal workspace manager (replaces tmux) |
| `.config/alacritty`, `.config/itermcolors` | Terminal emulators, Catppuccin themes |
| `.config/ohmyposh` | Shell prompt |
| `.config/aliases` | Shell aliases, sourced from `.zshrc` |
| `.zshrc`, `.zprofile`, `.bashrc` | Shell config |

Stow ignores `README.md`, `Brewfile` and `install.sh` (see `.stow-local-ignore`).

## Machine-local settings and secrets
`.zprofile` sources `~/.zprofile.local` if it exists. Put tokens such as `HOMEBREW_ARTIFACTORY_TOKEN` there. `*.local` files are gitignored.

## herdr
The prefix is `ctrl+b`. Press `prefix+?` for all bindings.

| Action | Key |
| --- | --- |
| New tab | `prefix+c` |
| Split right / down | `prefix+v` / `prefix+minus` |
| Move between panes | `prefix+h/j/k/l` |
| Detach | `prefix+q` |

Edit `~/.config/herdr/config.toml`, then `herdr config check` and `herdr server reload-config`. Only `config.toml` is tracked; sockets, logs and session state in that directory are gitignored.

## Neovim
First launch installs plugins with lazy.nvim and treesitter parsers (needs `tree-sitter-cli`, installed by the Brewfile). Formatters (`stylua`, `black`, `isort`, `prettier`) and `golangci-lint` come from the Brewfile; language servers are installed through Mason.

## Adding a package
Add it to the Brewfile. To see what is installed but not listed: `brew bundle cleanup --file=Brewfile` (lists only; add `--force` to uninstall).
