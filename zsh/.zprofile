# Login-shell environment. Runs once per iTerm window; child shells inherit it,
# so this is the cheapest place to put PATH and other "set once" exports.

# Homebrew — also exports HOMEBREW_PREFIX/CELLAR, MANPATH, INFOPATH, PATH.
eval "$(/opt/homebrew/bin/brew shellenv)"

# fzf environment (uses fd as the underlying finder)
if command -v fzf >/dev/null 2>&1 && command -v fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
fi

# PATH additions — set once at login so subshells inherit instead of re-prepending.
export PATH="/Users/jujoco/.local/bin:$PATH"            # uvx
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"          # Ruby
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"       # OpenJDK
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH" # PostgreSQL 16
