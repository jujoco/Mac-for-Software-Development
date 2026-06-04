# Mac Dev Setup

A curated list of the apps, CLI tools, & mac settings I use to get up and running fast on a new Mac.

---

## Desktop Applications

- [iTerm2](https://iterm2.com/) • Best Terminal Em.
- [Claude Desktop](https://claude.com/download) • Best AI Assistant
- [VS Code](https://code.visualstudio.com/download) • Still Best Free IDE
- [Docker Desktop](https://www.docker.com/) • Best Container App
- [Bruno](https://www.usebruno.com/) • Best API testing App
- [Obsidian](https://obsidian.md/download) • Best Note taking App
- [Rectangle](https://rectangleapp.com/) • Best Window Manager
- [Karabiner Elements](https://karabiner-elements.pqrs.org/) • Best App Manager
- [Super Whisper](https://superwhisper.com/) • Best Voice Dictation
- [Google Chrome](https://www.google.com/chrome/) • Browser

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

- [Claude Code](https://claude.com/product/claude-code)
- [Homebrew](https://brew.sh/)

  > Note: after every homebrew install, carefully follow the logged instructions

  - `brew install fnm` - fast node manager
  - `brew install uv` - python manager
  - `brew install rust` - rust bin
  - `brew install fzf` - fuzzy finder
  - `brew install zoxide` - better cli cd
  - `brew install atuin` - better cli history
  - `brew install fd` - better cli find
  - `brew install ripgrep` - better cli grep
  - `brew install jq` - command-line JSON processor
  - `brew install git-lfs` - Git extension for large files
  - `brew install lazygit` - terminal UI for git
  - `brew install tree` - directory tree viewer
  - `brew install ffmpeg` - audio/video converter
  - `brew install notunes` - disable apply music button

---

## Global npm Packages

```sh
npm install -g @playwright/cli @vscode/vsce pnpm
```

- `pnpm` - fast, disk-efficient package manager
- `@playwright/cli` - browser automation and testing CLI
- `@vscode/vsce` - VS Code extension packaging and publishing tool

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
