# Powerlevel10k instant prompt. Must stay near the top of ~/.zshrc.
# Code requiring console input (password prompts, [y/n], etc.) must go above this block.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Completion system. Daily-cached audit: full compinit when ~/.zcompdump is
# missing or >24h old (glob `.mh+24`), otherwise `compinit -C` (skip audit).
autoload -Uz compinit
if [[ -f ~/.zcompdump && -z ~/.zcompdump(#qN.mh+24) ]]; then
  compinit -C
else
  compinit
fi

# Completion UX (the niceties OMZ set up implicitly)
zstyle ':completion:*' menu select                          # arrow-key menu
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # case-insensitive
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"     # colorize matches
zstyle ':completion:*' group-name ''                        # group by category

# History — backs atuin; `fc`, `!!`, `!$`, and atuin's importer rely on these.
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY HIST_IGNORE_ALL_DUPS

# Aliases
config_dir="$HOME/.config/zsh"
[[ -r "$config_dir/aliases.zsh" ]] && source "$config_dir/aliases.zsh"

# Powerlevel10k theme (uses HOMEBREW_PREFIX from .zprofile)
[[ -r "$HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme" ]] && \
  source "$HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme"

# fzf
if command -v fzf >/dev/null 2>&1; then
  fzf_completion_file="/opt/homebrew/share/fzf/shell/completion.zsh"
  fzf_keybindings_file="/opt/homebrew/share/fzf/shell/key-bindings.zsh"
  [[ -r "$fzf_completion_file" ]] && source "$fzf_completion_file"
  [[ -r "$fzf_keybindings_file" ]] && source "$fzf_keybindings_file"
fi

# fzf-git script (enhanced git viewing)
[[ -r "$HOME/.config/fzf-git.sh" ]] && source "$HOME/.config/fzf-git.sh"

# Use fd to generate path candidates for fzf completion
_fzf_compgen_path() { fd --hidden --exclude .git . "$1"; }
_fzf_compgen_dir()  { fd --type=d --hidden --exclude .git . "$1"; }

# atuin (history) and zoxide (smart cd)
command -v atuin  >/dev/null 2>&1 && eval "$(atuin init zsh)"
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init zsh)"

# zsh-syntax-highlighting must be sourced near the end so it sees all keymaps.
[[ -r "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && \
  source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Powerlevel10k user config. To customize, run `p10k configure` or edit ~/.p10k.zsh.
[[ -r "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"

# fnm — ACTIVE: simple-default mode. Stable `which node`, no per-shell symlink dirs,
# no chpwd hook. Trade-off: no auto-switch on `.nvmrc`; `fnm use` is a no-op.
export PATH="$HOME/.local/share/fnm/aliases/default/bin:$PATH"

# fnm — DISABLED: per-shell + auto-switch mode. Enable (and comment the export above)
# when projects need different Node versions; restores `.nvmrc` auto-switch and `fnm use`.
# command -v fnm >/dev/null 2>&1 && eval "$(fnm env --use-on-cd --shell zsh)"

# Bash Shell Integration for VSCode Terminal
# [[ "$TERM_PROGRAM" == "vscode" ]] && . "/Applications/Visual Studio Code.app/Contents/Resources/app/out/vs/workbench/contrib/terminal/common/scripts/shellIntegration-rc.zsh"
