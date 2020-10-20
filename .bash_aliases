
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

# Check temperature
alias checktemp="paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'"

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
alias adb2="/home/dex/Android/Sdk/platform-tools/adb"  # For special adb setupe
alias gc="git commit -a -S -m"
alias xc="xargs echo -n | xclip -selection clipboard"

# Distro Specific
# alias u="sudo apt update && sudo apt upgrade && sudo apt dist-upgrade"
#alias u="sudo pacman -Syu"
#alias u="sudo dnf upgrade --refresh"
#alias u="sudo zypper up"
#alias pi="sudo pacman -S"
#alias pacremove="sudo pacman -Rsn $(pacman -Qdtq)" # Purges unused dependencies
alias u="sudo emerge --ask --update --deep --keep-going --with-bdeps=y --newuse @world"

# Change file date time
alias changetime="sudo rc-update add ntp-client default"

# For version control on the dotfiles
# Process is detailed in following
# https://www.atlassian.com/git/tutorials/dotfiles
# After this use 'config config --local status.showUntrackedFiles no'

alias config='/usr/bin/git --git-dir=$HOME/.dexconf/ --work-tree=$HOME'


# For Pyenv 
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/usr/bin:$PATH"


# Path for snap packages
export PATH="/var/lib/snapd/snap/bin:$PATH"

# For the Ranger
export W3MIMGDISPLAY_PATH="/usr/share/w3m"

# Initialize NVM constant
export NVM_DIR="$HOME/.nvm"


# PATH for adb tools
export PATH="$HOME/Android/Sdk/platform-tools:$PATH"
# Other paths
export PATH="/usr/local/bin:$PATH" 
export PATH="/home/dex/.local/bin:$PATH"

# For protonvpn
#alias protona="sudo $(which protonvpn) c -f"
#alias protond="sudo $(which protonvpn) d"

# Gentoo helper
alias dclean="sudo emerge --ask --depclean --verbose"
alias dremove="sudo emerge --deselect"
alias ask="sudo emerge --ask --tree --verbose"
alias askmask="sudo emerge --ask --autounmask=y --autounmask-write --verbose"
alias eu="equery u"
alias eg="equery g"
alias es="emerge -s"
alias ea="equery list --portage-tree --overlay-tree"

