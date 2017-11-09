#
# Harvey Brown's ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



alias myip="curl http://ipecho.net/plain; echo"
alias home='cd ~'
alias ..='cd ..'
alias ebash='vim ~/.bashrc'
alias ei3='vim ~/.config/i3/config'
alias rbash='. ~/.bashrc'
alias ls='ls --color=auto'
alias yolo='yaourt --noconfirm'
alias pacmanclean='sudo pacman -Rns $(pacman -Qqtd)'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias s="sudo"

 
PS1='[\u@\h \W]\$ '
# PS1='\W \$ '
