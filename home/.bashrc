# core
[[ $- != *i* ]] && return
shopt -s histappend
shopt -s autocd        # cd by typing directory name
shopt -s cdspell       # autocorrect cd misspellings
shopt -s direxpand     # expand directory names
set -o vi              # vi mode in bash

# history
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE="ls:bg:fg:history:clear:exit"
HISTTIMEFORMAT="%F %T "

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
echo -e "\n${colors[RED]}${colors[ITALIC]}Hey there, space cowboy${colors[NC]}"
echo -e "${colors[BLUE]}${colors[ITALIC]}$(date "+%A, %B %d at %I:%M %p")${colors[NC]}\n"

# env
export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"
export LESS="-R"

# sys
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lah'
alias x='startx'
alias please='sudo pacman -S'
alias fuckoff='sudo pacman -R'
alias uz='bsdtar xvf'
alias f='fetch'
alias rel='xrdb merge .Xresources && kill -USR1 $(pidof st)'
alias gofont='fc-cache -fv'
alias gogo='source ~/.bashrc'
alias df='df -h'
alias free='free -h'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias p='ps aux | grep'

# nav
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias storeage='cd /mnt/storage/'
alias prog='cd projects/'
alias apps='cd .local/bin/'
alias hk='cd .config/sxhkd'
alias rude='cd projects/rude/'

# build
alias m='make'
alias mc='make clean'
alias smi='sudo make install'
alias smu='sudo make uninstall'

# applications
alias r='ranger'
alias l='leafpad'
alias kickass='dosbox -conf ~/.dosbox/duke3d.conf'
alias v='$EDITOR'
alias :q='exit'

# sh stuff
alias g='sudo ~/.local/bin/gff.sh'
alias clean='bash ~/.local/bin/cleaner.sh'
alias irc='bash ~/.local/bin/sauron.sh -s irc.libera.chat -p 6667 -n getjared -c "#bash"'
