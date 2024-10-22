#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

#user3
PS1='\[\e[48;5;236m\e[33m\]    \[\e[0m\] \[\e[34m\]\w \[\e[0m\] '

# motd & colors
red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
ITALIC='\033[3m'
NC='\e[0m'              # No Color

#echo -e "${CYAN}This is BASH ${RED}${BASH_VERSION%.*}${CYAN} - DISPLAY on ${RED}#$DISPLAY${NC}\n"

echo -e "
${RED}\e\033[3mHey there, space cowboy${NC}\n"


# system stuff
alias x='startx'
alias storeage='cd /mnt/storage/'
alias please='sudo pacman -S'
alias fuckoff='sudo pacman -R'
alias uz='bsdtar xvf'
alias f='fetch'

alias d='echo -e "\033[1;31m$(date "+%a")\033[0m \033[1;32m$(date "+%b")\033[0m \033[1;33m$(date "+%d")\033[0m \033[1;34m$(date "+%T")\033[0m \033[1m$(date "+%Y")\033[0m"'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rel="xrdb merge .Xresources && kill -USR1 $(pidof st)"
alias gofont='fc-cache -fv'
alias gogo='source ~/.bashrc'

alias ..='cd ..'
alias m='make'
alias mc='make clean'
alias smi='sudo make install'
alias smu='sudo make uninstall'

# quick access
alias rude='cd projects/rude/'
alias prog='cd projects/'
alias apps='cd .local/bin/'
alias hk='cd .config/sxhkd'
alias r='ranger'
alias l='leafpad'

# dos stuff
alias kickass='dosbox -conf ~/.dosbox/duke3d.conf'

# sh scripts
alias g='sudo ~/.local/bin/gff.sh'
alias clean='bash ~/.local/bin/cleaner.sh'
alias irc='bash ~/.local/bin/sauron.sh -s irc.libera.chat -p 6667 -n getjared -c "#bash"'

