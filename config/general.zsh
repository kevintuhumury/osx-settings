export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# I love vim.
export EDITOR=mvim
export GIT_EDITOR=vim
export VISUAL=$EDITOR
export GEMEDITOR=$EDITOR
export BUNDLER_EDITOR=$EDITOR

# Paths
export PATH="/usr/local/bin:$PATH"
if [[ -d "$HOME/.rvm/bin" ]]; then
  export PATH=$PATH:$HOME/.rvm/bin
fi
export PATH=$PATH:$HOME/.osx-settings/bin

# Grep a process
function psg {
  FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
  REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
  ps aux | grep "[$FIRST]$REST"
}

# Delete the ._* files.
function delete_dot_underscore {
  `find $1 -name "._*" -delete`
}
