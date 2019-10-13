# custom prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# don't overwrite the history file
shopt -s histappend

# don't memorize duplicate lines or lines starting with a space
export HISTCONTROL=ignoreboth:erasedups

# unlimited session history
HISTSIZE=

# unlimited persistent history
HISTFILESIZE=

# set up locale
export LANG=en_US.UTF-8

# set up editor
export EDITOR=vim
export VISUAL=vim

# use fd for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
