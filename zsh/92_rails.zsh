# Retrieve the Rails version of the current directory.
function rails_version {
  rails=$(rails --version | grep '^Rails [0-9]' | sed -E 's/Rails (.*)/(v\1)/g')
  if [ $? ]; then
    echo "$gray$rails$reset"
  fi
}
