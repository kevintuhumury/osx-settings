# Let's use an awesome prompt.
setopt prompt_subst
PROMPT='$(~/.osx-settings/script/prompt $?)'
RPROMPT='$(___rvm_prompt)$(rails_version)'
