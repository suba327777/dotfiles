<div align="center">

# ✦ dotfiles ✦

**macOS configuration managed by suba327777**

![macOS](https://img.shields.io/badge/macOS-000000?style=for-the-badge&logo=apple&logoColor=white)
![WezTerm](https://img.shields.io/badge/WezTerm-%234E49EE?style=for-the-badge&logo=wezterm&logoColor=white)
![Neovim](https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)

</div>

---

## 📦 Requirements

- macOS
- Git

## 🚀 Setup

```sh
git clone https://github.com/suba327777/dotfiles.git ~/dotfiles
cd ~/dotfiles
make all
```

> ⚠️ **Warning:** Existing config files will be overwritten with symbolic links.

## 🗂 Structure

```
dotfiles/
├── brew/         # Homebrew (Brewfile) + npm global packages
├── karabiner/    # Karabiner-Elements key mapping
├── lazygit/      # lazygit config
├── nvim/         # Neovim (lazy.nvim)
├── tmux/         # tmux + TPM
├── wezterm/      # WezTerm
└── zsh/          # Zsh
```

## 🛠 Make targets

| Command | Description |
|---|---|
| `make all` | Set up all configurations |
| `make brew` | Install Homebrew + Brewfile packages |
| `make zsh` | Create symlink for zsh config |
| `make nvim` | Create symlink for Neovim config |
| `make tmux` | Set up tmux config + TPM |
| `make wezterm` | Create symlink for WezTerm config |
| `make karabiner` | Create symlink for Karabiner config |
| `make lazygit` | Create symlink for lazygit config |
| `make clean` | Remove all symlinks |

## ✅ After Setup

### Neovim
Plugins are automatically installed by lazy.nvim on the first launch.

```sh
nvim
```

### tmux
Install plugins via TPM after the first launch.

```
<prefix> + I
```

### Update Brewfile

Dump currently installed packages to Brewfile:

```sh
cd brew && make bundle
```
