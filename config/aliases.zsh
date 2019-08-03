# General aliases
alias l="ls -halo"
alias m="mvim --remote-silent"
alias dls="cd ~/Downloads"
alias grep="grep --colour=always"

# Ruby (Rails) aliases
alias be="bundle exec"

# Git aliases
alias cdb='base=$(git rev-parse --show-cdup) && cd $base'
alias g='git'
alias st='git status'
alias co='git checkout'
alias up='git pull --ff-only'
alias br='git branch'
alias ll='git l'
alias aa='git add --all'
alias d='git diff'
alias dc='git diff --cached'
alias upstash='git stash && up && git stash pop'
alias upclean='git checkout master && up && git remote prune origin && git branch'
alias home_config='git config user.email "$HOME_AUTHOR_EMAIL"'
alias work_config='git config user.email "$WORK_AUTHOR_EMAIL"'
alias home_author='name=$(git config user.name) && git commit --amend --author "$name <$HOME_AUTHOR_EMAIL>"'
alias work_author='name=$(git config user.name) && git commit --amend --author "$name <$WORK_AUTHOR_EMAIL>"'

# Need to do this (for some reason) so you can use backspace in screen.
alias screen="TERM=screen screen"

# Display battery info on the Mac: http://blog.justingreer.com/post/45839440/a-tale-of-two-batteries
alias battery="ioreg -w0 -l | grep Capacity | cut -d ' ' -f 17-50"

# Start tmux in utf-8 mode.
alias t="tmux -u"

# Hosts will open your hosts file, for easy access
if [ "`id -u`" -eq 0 ]; then
  alias hosts="mvim /etc/hosts"
else
  alias hosts="sudo mvim /etc/hosts"
fi
