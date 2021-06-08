#
# Harvey Brown's ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias myip="curl http://ipecho.net/plain"
alias home='cd ~'
alias ..='cd ..'
alias ebash='vim ~/.bashrc'
alias ei3='vim ~/.config/i3/config'
alias rbash='. ~/.bashrc'
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias yolo='yaourt --noconfirm'
alias pacmanclean='sudo pacman -Rns $(pacman -Qqtd)'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias s="sudo"
alias evim="vim ~/.vimrc"
alias net="sudo netctl start"
alias :q="exit"
alias wifi="sudo wifi-menu"
alias !!="sudo !!"
alias gitedit="vim .git/config"
alias pull="git pull"
alias push="git push"
alias pullsub="git pull && git submodule update --recursive --remote"
alias checkoutsub="git checkout --recurse-submodules"
alias egit="vim .git/config"
#export PS1='\e[0;33m\][\A] \[\e]0;\w\a\]\[\e[31m\]\u \[\e[33m\]\w\[\e[0m\] \e[0;31m\]\$ \e[0m'
#git checkout -b newLocalBranch remoteName/remoteBranch

#df -H
#lsusb

export PS1='\e[0;33m\][\A] \[\e]0;\w\a\]\[\e[31m\]\u \[\e[33m\]\w\[\e[0m\] \e[0;31m\]\$ \e[0m'

rebase() {
    echo “Attempting rebase”
    git stash -u && git fetch
    git rebase
    if ! [ $? -eq 0 ]; then
        echo “Rebase failed, merging instead”
        git rebase --abort
        git merge
        if ! [ $? -eq 0 ]; then
            echo “Fatal: Merge failed, aborting”
            git merge --abort
            return -1
        else
            echo “Merge successful”
        fi
    else
        echo “Rebase successful”
    fi
    git stash pop
    return 0
}

stty stop ''
stty start ''
stty -ixon
stty -ixoff
