# General aliases
alias l="ls -halo"
alias tf="tail -f -n 100"
alias m="mvim --remote-silent"
alias dls="cd ~/Downloads"
alias grep="grep --colour=always"
alias hg="history | grep "

# Ruby (Rails) aliases
alias be="bundle exec"
alias rdm="bundle exec rake db:migrate db:test:prepare"
alias rds="bundle exec rake db:seed"
alias rr="mkdir -p tmp && touch tmp/restart.txt"
alias cov="open coverage/index.html"
alias rcov="open coverage/rcov/index.html"

# Git aliases
alias cdb='base=$(git rev-parse --show-cdup) && cd $base'
alias g='git'
alias c='git commit'
alias p='git push'
alias st='git status'
alias co='git checkout'
alias ca='git commit --amend'
alias up='git pull --ff-only'
alias br='git branch'
alias lg='git log -p'
alias ll='git l'
alias la='git la'
alias aa='git add --all'
alias d='git diff'
alias dc='git diff --cached'
alias f='git fetch'
alias gf='git fetch && git status'
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
