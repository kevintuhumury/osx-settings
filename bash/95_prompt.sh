# Let's use an awesome prompt.
function __load_prompt {
  PS1="$__rvm_prompt$(~/.osx-settings/prompt $?)"
}
PROMPT_COMMAND=__load_prompt
