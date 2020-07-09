RESET="\033[0m"
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"

info() {
  echo -e "\n${YELLOW}${1}${RESET}"
}

# Delete the ._* files.
function delete_dot_underscore {
  `find $1 -name "._*" -delete`
}

# Quickly change directory and open the specified XCode workspace from anywhere.
function wo {
  file=$1.xcworkspace
  cd $(dirname $(find ~/Code -name $file))
  open $file
}

# Connect to Digital Ocean.
function digitalocean {
  droplet=${1:-coreos}
  docker-machine env $droplet
  eval $(docker-machine env $droplet)
}

# Easily set the git upstream.
function git_upstream {
  git branch --set-upstream-to=origin/$1 $1
}

# Easily replace the git origin.
function git_origin {
  if [ ! -z "$1" ]; then
    info 'Remote repositories (current):'
    git remote -v

    git remote rename origin temp
    git remote add origin $1

    info 'Remote repositories (temporary):'
    git remote -v
    git remote remove temp

    info 'Remote repositories (new):'
    git remote -v
  else
    info 'No argument supplied.'
  fi
}
