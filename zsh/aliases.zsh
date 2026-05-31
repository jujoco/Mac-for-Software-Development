# Bat (a better cat command)
alias cat='bat --style=plain'

# Git
alias g='git'
alias ga='git add'
alias gafzf='git ls-files -m -o --exclude-standard | grep -v "__pycache__" | fzf -m --print0 | xargs -0 -o -t git add' # Git add with fzf
alias grmfzf='git ls-files -m -o --exclude-standard | fzf -m --print0 | xargs -0 -o -t git rm' # Git rm with fzf
alias grfzf='git diff --name-only | fzf -m --print0 | xargs -0 -o -t git restore' # Git restore with fzf
alias grsfzf='git diff --name-only | fzf -m --print0 | xargs -0 -o -t git restore --staged' # Git restore --staged with fzf
alias gf='git fetch'
alias gfa='git fetch --all'
alias gs='git status'
alias gss='git status -s'
alias gup='git fetch && git rebase'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias glo='git pull origin'
alias gl='git pull'
alias glgga='git log --graph --decorate --all'
alias glgg='git log --graph --max-count=5 --decorate --pretty="oneline"'
alias gb='git branch '
alias gbr='git branch -r'
alias gd='git diff'
alias gco='git checkout '
alias gcofzf='git branch | fzf | xargs git checkout' # Select branch with fzf
alias gre='git remote'
alias gres='git remote show'
alias gm='git merge'
alias gp='git push'
alias gpo='git push origin'
alias gcm='git commit -m'

# Ranger
alias r=". ranger"

# Tree (a better ls command)
alias ls="ls -G"
alias lst="tree -LC 1 --gitignore"
alias lsta="tree -LC 1 -a --gitignore"
