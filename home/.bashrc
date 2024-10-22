# core
[[ $- != *i* ]] && return
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth


# prompt
PS1='\[\e[48;5;236m\e[33m\]    \[\e[0m\] \[\e[34m\]\w \[\e[0m\] '

# colors
declare -A colors=(
    ["red"]='\e[0;31m'
    ["RED"]='\e[1;31m'
    ["blue"]='\e[0;34m'
    ["BLUE"]='\e[1;34m'
    ["cyan"]='\e[0;36m'
    ["CYAN"]='\e[1;36m'
    ["ITALIC"]='\033[3m'
    ["NC"]='\e[0m'
)

# motd
echo -e "\n${colors[RED]}${colors[ITALIC]}Hey there, space cowboy${colors[NC]}\n"

# system aliases
alias ls='ls --color=auto'
alias x='startx'
alias please='sudo pacman -S'
alias fuckoff='sudo pacman -R'
alias uz='bsdtar xvf'
alias f='fetch'
alias rel='xrdb merge .Xresources && kill -USR1 $(pidof st)'
alias gofont='fc-cache -fv'
alias gogo='source ~/.bashrc'

# navigation aliases
alias ..='cd ..'
alias storeage='cd /mnt/storage/'
alias prog='cd projects/'
alias apps='cd .local/bin/'
alias hk='cd .config/sxhkd'
alias rude='cd projects/rude/'

# build aliases
alias m='make'
alias mc='make clean'
alias smi='sudo make install'
alias smu='sudo make uninstall'

# application aliases
alias r='ranger'
alias l='leafpad'
alias kickass='dosbox -conf ~/.dosbox/duke3d.conf'

# scripts
alias g='sudo ~/.local/bin/gff.sh'
alias clean='bash ~/.local/bin/cleaner.sh'
alias irc='bash ~/.local/bin/sauron.sh -s irc.libera.chat -p 6667 -n getjared -c "#bash"'

# date
alias d='echo -e "\033[1;31m$(date "+%a")\033[0m \033[1;32m$(date "+%b")\033[0m \033[1;33m$(date "+%d")\033[0m \033[1;34m$(date "+%T")\033[0m \033[1m$(date "+%Y")\033[0m"'
