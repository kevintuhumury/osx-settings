source ~/.osx-settings/config/general.zsh
source ~/.osx-settings/config/aliases.zsh
source ~/.osx-settings/config/rvm.zsh
source ~/.osx-settings/config/ruby.zsh
source ~/.osx-settings/config/zsh_options.zsh
source ~/.osx-settings/config/git.zsh
source ~/.osx-settings/config/git_autocomplete.zsh
source ~/.osx-settings/config/title.zsh

# Define a PROJECT_PARENT_DIRS array as defined below in the following file:
#  ~/.osx-settings/config/personal.zsh
#
# PROJECT_PARENT_DIRS+=("$HOME/Projects")

PROJECT_PARENT_DIRS=()

if [[ -f ~/.osx-settings/config/personal.zsh ]]; then
  source ~/.osx-settings/config/personal.zsh
fi

for PARENT_DIR in ${PROJECT_PARENT_DIRS[@]} ; do
  if [ -d "$PARENT_DIR" ]; then
    for PROJECT_DIR in $(/bin/ls $PARENT_DIR); do
      if [[ ! -z `which $PROJECT_DIR 2> /dev/null` ]]; then
        if [ -d "$PARENT_DIR/$PROJECT_DIR" ]; then
          alias "$PROJECT_DIR"="cd $PARENT_DIR/$PROJECT_DIR"
        fi
      fi
    done
  fi
done
