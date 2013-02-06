# Retrieve the Rails version of the current directory.
function rails_version {
  current_version=$(rails --version &> /dev/null | sed -E 's/Rails (.*)/ v\1/g')
  if [ $? ]; then
    echo "$gray$current_version$reset"
  fi
}
