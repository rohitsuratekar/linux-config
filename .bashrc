#
# ~/.bashrc
#
if [[ $DISPLAY ]]; then
    # If not running interactively, do not do anything
    [[ $- != *i* ]] && return
    [[ -z "$TMUX" ]] && exec tmux
fi
# Following file have all local variables like DEXHOME
# This will be used in all configuration files and should be expored first
if [ -f $HOME/.constants ]; then 
	source $HOME/.constants 
fi


# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '


powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

if [ -f $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi 
if [ -f $HOME/Settings/bash_functions.sh ]; then
	source $HOME/Settings/bash_functions.sh
fi 
