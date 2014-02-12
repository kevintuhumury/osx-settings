# Listing files.
alias l="ls -halo"
alias ltr="ls -lt"
alias lth="l -t|head"
alias lh="ls -Shl | less"
alias tf="tail -f -n 100"

# Tailing is fun.
alias t500="tail -n 500"
alias t1000="tail -n 1000"
alias t2000="tail -n 2000"

# m for Mvim.
alias m="mvim --remote-silent"

# Grep from the history
alias hg="history | grep "

# Fast switching to folders.
alias dls="cd ~/Downloads"

# GitX to the rescue.
alias gitx="open /Applications/GitX.app"

# Need to do this (for some reason) so you can use backspace in screen.
alias screen="TERM=screen screen"

# Display battery info on the Mac: http://blog.justingreer.com/post/45839440/a-tale-of-two-batteries
alias battery="ioreg -w0 -l | grep Capacity | cut -d ' ' -f 17-50"

# Start tmux in utf-8 mode.
alias t="tmux -u"

# Show a colored pattern in the output.
alias grep="grep --colour=always"

# Hosts will open your hosts file, for easy access
if [ "`id -u`" -eq 0 ]; then
  alias hosts="mvim /etc/hosts"
else
  alias hosts="sudo mvim /etc/hosts"
fi

# Rails 2.x shortcuts.
alias sc="script/console"
alias ss="script/server"
alias sg="script/generate"
alias sdb="script/dbconsole"

# Rails 3 shortcuts.
alias r="./script/rails"
alias b="gem install bundler && bundle install"

# Run rake db:migrate and fill the test database.
alias rdm="bundle exec rake db:migrate db:test:prepare"

# Run rake db:seed to fill the database.
alias rds="bundle exec rake db:seed"

# Show me the coverage reports.
alias cov="open coverage/index.html"
alias rcov="open coverage/rcov/index.html"

# Cucumber shortcuts (Rake is slow).
alias c="cucumber --require features"
alias wip="c --profile wip"

# Time RSpec and use document format.
alias specdoc="time rspec --format documentation"

# Restart Passenger.
alias rr="mkdir -p tmp && touch tmp/restart.txt"

# I hate having to type bundle exec.
alias be="bundle exec"

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
