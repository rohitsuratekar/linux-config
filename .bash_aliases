
# All the aliases

# Fot Tmux
export TERM="xterm-256color"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias ls='ls --color=auto'
fi 



# General Purpose
alias o="xdg-open . &"
alias l="ls -lhtr --color=auto"
alias ll="ls -al --color=auto"
alias x="xdg-open"
alias f="find . -name"
alias t="tar --exclude='*/*' -tvf"
alias gt="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias g="git status"
alias du="du -h --max-depth=1 "
alias dfh="df -BG |body sort -k 2nr | head -8"
alias vim="nvim" # To use neo-vim instead vim

# GPG 
alias gpgremove="echo RELOADAGENT | gpg-connect-agent"

# All file navigations. Export DEXHOME variable in .bashrc
# System
alias down="cd $HOME/Downloads/"
alias desk="cd $HOME/Desktop/"
alias doc="cd $HOME/Documents/"
# Mounted file system
alias s="cd $DEXHOME/Services/"
alias w="cd $DEXHOME/"
alias zz="cd $DEXHOME/Rohit/rBox/Zebrafish/"
alias ct="cd $DEXHOME/Rohit/PythonProjects/CardioTrans/"
alias ap="cd $DEXHOME/Rohit/AndroidProjects/"
alias pp="cd $DEXHOME/Rohit/PythonProjects/"
alias rr="cd $DEXHOME/Rohit/rBox/RIIMCB/2020/"
alias v="cd /mnt/os/Viper/"


# Update Python packages
alias pipall="pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install --user --upgrade"

# Distro Specific
# alias u="sudo apt update && sudo apt upgrade && sudo apt dist-upgrade"
#alias u="sudo pacman -Syu"
alias u="sudo dnf upgrade --refresh"
#alias pi="sudo pacman -S"
#alias pacremove="sudo pacman -Rsn $(pacman -Qdtq)" # Purges unused dependencies


# Change file date time
alias changetime="$DEXHOME/Services/Scripts/change_time.sh"

# For version control on the dotfiles
# Process is detailed in following
# https://www.atlassian.com/git/tutorials/dotfiles
# After this use 'config config --local status.showUntrackedFiles no'

alias config='/usr/bin/git --git-dir=$HOME/.dexconfig/ --work-tree=$HOME'


# For Pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Path for snap packages
export PATH="/var/lib/snapd/snap/bin:$PATH"

# For the Ranger
export W3MIMGDISPLAY_PATH="/usr/share/w3m"

# Initialize NVM constant
export NVM_DIR="$HOME/.nvm"
