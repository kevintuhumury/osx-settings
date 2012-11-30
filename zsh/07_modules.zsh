# Built-in command interface for the stat system call.
zmodload -a zsh/stat stat

# Built-in command to start commands in a pseudo-terminal.
zmodload -a zsh/zpty zpty

# Module which adds profiling for shell methods.
zmodload -a zsh/zprof zprof

# Module which adds access to external files.
zmodload -ap zsh/mapfile mapfile
