# Load RVM.
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
  source $HOME/.rvm/scripts/rvm
  __rvm_prompt="$gray\$(~/.rvm/bin/rvm-prompt) "
else
  __rvm_prompt=""
fi
