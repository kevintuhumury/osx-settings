# rbenv version
function rbenv_prompt {
  if which rbenv &> /dev/null; then
    echo "$gray$(rbenv version-name)$reset"
  fi
}
