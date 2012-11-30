# Don't duplicate lines in the history. See bash(1) for more options.
export HISTCONTROL=ignoredups

# Also ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# Bash colors.
export LSCOLORS=ExFxCxDxBxegedabagacad

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"
