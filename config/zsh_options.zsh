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
RPROMPT='$(___rvm_prompt)$(rails_version)'

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

# Easily add arguments or flags, see: http://chneukirchen.org/blog/archive/2011/02/10-more-zsh-tricks-you-may-not-know.html
after-first-word() {
  zle beginning-of-line
  zle forward-word
}
zle -N after-first-word
bindkey "^X1" after-first-word

# Adds completion.
zstyle ":completion:*" list-colors ${(s.:.)LS_COLORS}
zstyle ":completion:*:*:kill:*:processes" list-colors "=(#b) #([0-9]#)*=0=00;31"
zstyle -e ":completion:*:approximate:*" max-errors "reply=( $(( ($#PREFIX+$#SUFFIX)/2 )) numeric )"
zstyle ":completion:*" matcher-list "m:{a-z}={A-Z}"

# Adds completion in history with M-/, M-,. See: http://chneukirchen.org/blog/archive/2011/02/10-more-zsh-tricks-you-may-not-know.html
zstyle ":completion:history-words:*" list no
zstyle ":completion:history-words:*" menu yes
zstyle ":completion:history-words:*" remove-all-dups yes
bindkey "\e/" _history-complete-older
bindkey "\e," _history-complete-newer
