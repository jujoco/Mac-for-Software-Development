# Runs for every zsh invocation (interactive, non-interactive, scripts).
# Keep minimal — anything heavy here adds latency to every `zsh -c` call.

# Secrets
[[ -r "$HOME/.env" ]] && source "$HOME/.env"

# Themes (onedark or nord)
export TMUX_THEME="nord"
export BAT_THEME="Nord"

# bat as the man pager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Locale. LANG alone covers all LC_* categories; LC_ALL only needs to be set
# when overriding a system that already defines LC_* individually.
export LANG="en_US.UTF-8"

# Default editor (commented out; using IDE)
# export EDITOR="nvim"
# export VISUAL="nvim"

# Prefer /usr/local/bin (Intel-Homebrew leftovers, manual installs) over system bins
export PATH="/usr/local/bin:$PATH"
