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

# Easily grep a proces.
function psg {
  FIRST=`echo $1 | sed -e "s/^\(.\).*/\1/"`
  REST=`echo $1 | sed -e "s/^.\(.*\)/\1/"`
  ps aux | grep "[$FIRST]$REST"
}

# Hosts will open your hosts file, for easy access
if [ "`id -u`" -eq 0 ]; then
  alias hosts="mvim /etc/hosts"
else
  alias hosts="sudo mvim /etc/hosts"
fi
