# Save the history.
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# ZSH options.
setopt appendhistory autocd beep extendedglob nomatch

# Don't duplicate lines in the history.
setopt hist_ignore_all_dups

# Don't auto name directories.
unsetopt auto_name_dirs

# Completion system.
autoload -Uz compinit
compinit

# ZSH Colors.
export LS_COLORS="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;35:*.rb=00;31"
