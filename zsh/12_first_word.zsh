# Easily add arguments or flags, see: http://chneukirchen.org/blog/archive/2011/02/10-more-zsh-tricks-you-may-not-know.html
after-first-word() {
  zle beginning-of-line
  zle forward-word
}
zle -N after-first-word
bindkey "^X1" after-first-word
