# All zsh plguin setting 

source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

# Powerline9k options and customization

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs vcs)

VCS_COLOR="006"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=$VCS_COLOR 
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=$VCS_COLOR 
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND=$VCS_COLOR 
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=$VCS_COLOR 

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_first_and_last"
POWERLEVEL9K_SHORTEN_DELIMITER=".."

POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_STATUS_FOREGROUND='green'


# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern root)
ZSH_HIGHLIGHT_STYLES[default]=none 
ZSH_HIGHLIGHT_STYLES[alias]=fg=green,bold 
ZSH_HIGHLIGHT_STYLES[path]=fg=cyan 
ZSH_HIGHLIGHT_STYLES[root]=bg=red

ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=white
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009


# For Wine Fonts
FREETYPE_PROPERTIES="truetype:interpreter-version=35"


