# Let's use an awesome prompt.
setopt prompt_subst
PROMPT="$(~/.osx_settings/prompt $?)"
RPROMPT="$(___rvm_prompt)"