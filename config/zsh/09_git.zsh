# Add some easy shortcuts to Git.
alias st='git status'

alias co='git checkout'

alias c='git commit'
alias ca='git commit --amend'
alias cm='git commit --message'

alias up='git pull --ff-only'
alias upstash='git stash && git pull --ff-only && git stash pop'

alias br='git branch'

alias lg='git log -p'
alias ll='git l'
alias la='git la'

alias aa='git add --all'

alias d='git diff'
alias df='git diff'
alias dc='git diff --cached'

alias f='git fetch'
alias gf='git fetch && git status'

alias cdb='base=$(git rev-parse --show-cdup) && cd $base'

unstage() {
  git reset HEAD -- $*
  echo
  git status
}
