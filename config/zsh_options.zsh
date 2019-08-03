export SHELL=$(which zsh)

# Save the history.
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Colors (used for the prompt).
export reset=$'%{\e[0;00m%}'
export gray=$'%{\e[0;90m%}'
export red=$'%{\e[0;31m%}'
export green=$'%{\e[0;32m%}'
export yellow=$'%{\e[0;33m%}'
export blue=$'%{\e[0;34m%}'
export magenta=$'%{\e[0;35m%}'
export cyan=$'%{\e[0;36m%}'
export white=$'%{\e[0;37m%}'

# Colors.
export CLICOLOR=1
export LS_COLORS="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;35:*.rb=00;31"

# Let's use an awesome prompt.
setopt prompt_subst
PROMPT='$(~/.osx-settings/script/prompt $?)'
RPROMPT=''

# Be like emacs (and bash)
bindkey -e

# Options that apparently make zsh better
setopt appendhistory autocd beep extendedglob nomatch

# Don't duplicate lines in the history.
setopt hist_ignore_all_dups

# Don't auto name directories.
unsetopt auto_name_dirs

# Completion system.
autoload -Uz compinit
compinit

# Built-in command interface for the stat system call.
zmodload -a zsh/stat stat

# Built-in command to start commands in a pseudo-terminal.
zmodload -a zsh/zpty zpty

# Module which adds profiling for shell methods.
zmodload -a zsh/zprof zprof

# Module which adds access to external files.
zmodload -ap zsh/mapfile mapfile
