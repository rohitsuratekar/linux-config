# Following file have all local variables like DEXHOME
# This will be used in all configuration files and should be expored first

if [ -f $HOME/.constants ]; then 
	source $HOME/.constants 
fi 

# Instant promt from powerlevel10k plugin need following import at the start of ZSH
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/dex/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# ZSH Plugin constants
if [ -f $HOME/Settings/zsh_plugins.sh ]; then 
	source $HOME/Settings/zsh_plugins.sh
else 
	echo "ZSH plugin constants are not imported from $HOME/Settings/zsh_plugins.sh"
fi 

# Plugin settings
# Keep zsh-syntax-highlighting as a last plugin to source
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Other ZSH options
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

setopt extendedglob notify # Extended patterns for files and notify background jobs
unsetopt beep # Disable been sount
autoload zmv  #Enable zmv utils

# Auto-completion
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dex/.zshrc'
autoload -Uz compinit   # Enable it
compinit
zstyle ':completion:*' menu select # Use Arrow keys to select completion
zstyle ':completion::complete:*' gain-privileges 1  # Auto-completion for sudo commands

# Reverse search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search 
zle -N up-line-or-beginning-search 
zle -N down-line-or-beginning-search 
[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search
bindkey '^R' history-incremental-search-backward

# Import other functions and aliases file

if [ -f $HOME/.bash_aliases ]; then 
	source $HOME/.bash_aliases 
else 
	echo "Aliases file not loaded from $HOME/.bash_aliases"
fi 

if [ -f $HOME/Settings/bash_functions.sh ]; then 
	source $HOME/Settings/bash_functions.sh  
else
	echo "Bash functions are not loaded from $HOME/Settings/bash_functions.sh"
fi

export GPG_TTY="$( tty )"
