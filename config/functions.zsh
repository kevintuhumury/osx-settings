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
