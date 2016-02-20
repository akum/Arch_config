#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#Generated from http://bashrcgenerator.com
PS1="\[\033[38;5;15m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;119m\] \W\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"
