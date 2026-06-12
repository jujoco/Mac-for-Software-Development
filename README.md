# Mac Dev Setup

A curated list of the apps, CLI tools, & mac settings I use to get up and running fast on a new Mac.

---

## Desktop Applications

- [Google Chrome](https://www.google.com/chrome/) • Browser
- [iTerm2](https://iterm2.com/) • Best Terminal Em.
- [Claude Desktop](https://claude.com/download) • Best AI Assistant
- [Docker Desktop](https://www.docker.com/) • Best Container App
- [Obsidian](https://obsidian.md/download) • Best Note taking App
- [Rectangle](https://rectangleapp.com/) • Best Window Manager
- [Karabiner Elements](https://karabiner-elements.pqrs.org/) • Best App Manager
- [VS Code](https://code.visualstudio.com/download) • Still Best Free IDE
- [Handy](https://github.com/cjpais/Handy) • Best Free Voice Dictation
- [Bruno](https://www.usebruno.com/) • Best API testing App

---

## Keyboard Settings

[Text Cursor Key-Repeat Tester](https://mac-key-repeat.zaymon.dev/): best butter smooth setting

enter in terminal & restart computer

```sh
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 12
```

Settings > Keyboard > Keyboard Shortcuts... > App Shortcuts >

- All Applications
  - disable Minimize
- Google Chrome, VSCode, iTerm, etc.
  - disable Hide

---

## CLI Applications

- [Homebrew](https://brew.sh/)

  > Note: after every homebrew install, carefully follow the logged instructions

  Install and use:

  - `brew install fd` - better cli find
  - `brew install ffmpeg` - audio/video converter
  - `brew install jq` - command-line JSON processor
  - `brew install lazygit` - terminal UI for git
  - `brew install neovim` - Vim-based text editor
  - `brew install notunes` - disable Apple Music button
  - `brew install ripgrep` - better cli grep
  - `brew install rust` - rust bin
  - `brew install tree` - directory tree viewer
  - `brew install uv` - python manager
  - `brew install wget` - retrieve files over HTTP/FTP

  One-time setup command:

  - `brew install gh` - github cli (run `gh auth login`)
  - `brew install git-lfs` - Git extension for large files (run `git lfs install`)

  Requires shell config (add init to `~/.zshrc`):

  - `brew install fnm` - fast node manager (`eval "$(fnm env)"`)
  - `brew install fzf` - fuzzy finder (key bindings + completion)
  - `brew install zoxide` - better cli cd (`eval "$(zoxide init zsh)"`)
  - `brew install atuin` - better cli history (`eval "$(atuin init zsh)"`)
  - `brew install powerlevel10k` - zsh prompt theme (source the theme + `p10k configure`)
  - `brew install zsh-syntax-highlighting` - better cli awareness (source the script)

- [Claude Code](https://claude.com/product/claude-code)

---

## Global npm Packages

```sh
npm install -g @playwright/cli @vscode/vsce corepack neovim pnpm
```

- `@playwright/cli` - browser automation and testing CLI
- `@vscode/vsce` - VS Code extension publishing tool
- `corepack` - Node package manager shim
- `neovim` - Node.js client for Neovim
- `pnpm` - fast, disk-efficient package manager

---

## Config Files

This repo also bundles the dotfiles and app configs I carry between machines:

- `zsh/.zshenv` • Loaded for every zsh invocation; sources secrets and sets locale, themes, and the `bat` man pager.
- `zsh/.zprofile` • Login-shell setup run once per window; initializes Homebrew, fzf, and `PATH` for child shells to inherit.
- `zsh/.zshrc` • Interactive shell config (Powerlevel10k, completions, history, fzf, atuin, zoxide, fnm).
- `zsh/aliases.zsh` • Shell aliases
- `karabiner/karabiner.json` • [Karabiner Elements](https://karabiner-elements.pqrs.org/) key-remapping rules.
- `RectangleConfig.json` • [Rectangle](https://rectangleapp.com/) window-management settings (import from Rectangle → Settings).

---

## Collaboration tools

- [Slack](https://slack.com/)
- [Google Workspaces](https://workspace.google.com/)
