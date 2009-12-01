# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#env variables
export EDITOR=vim
export VISUAL=$EDITOR
export PAGER=less
export LESS='-iMn'
export CVS_RSH=ssh

#aliases
alias ls='ls -alF --color'
alias traceroute='/usr/sbin/traceroute'
alias l='ls -alF --color'
alias bc='bc -lq'
alias vi='vim'
alias pg='ps auxw|grep'

#settings
set -o emacs
bind 'C-u:kill-whole-line'  #ctrl+u kills whole line
bind 'set show-all-if-ambigious on' #tab once for completion

##ssh_port_forward-forwarding-aliases

##machines

##workstation specific aliases (hermione)
alias g='~/bin/goofey'

#more customisations, but these are proven to work
TERMIMON=`tty|cut -c 6-12`
#TERMIMON=`tty|cut -d/ -f3`
COLOR1="\[\033[1;35m\]"
COLOR2="\[\033[1;34m\]"
COLOR3="\[\033[0;35m\]"
COLOR4="\[\033[0m\]"
PS1="$COLOR3[$COLOR1-$COLOR2($COLOR1\u$COLOR3@$COLOR1\h$COLOR2)$COLOR1-$COLOR2($COLOR1$TERMIMON$COLOR2)$COLOR1-$COLOR2($COLOR1\$(date +%I:%M%P)$COLOR3:$COLOR1\$(date +%d/%m/%Y)$COLOR2)$COLOR-$COLOR3]$COLOR4\n$COLOR3[$COLOR1-$COLOR2($COLOR3\w$COLOR2)$COLOR3>$COLOR4 "
PS2="$COLOR2-$COLOR1-$COLOR3-$COLOR4 "

#functions
rot13 () {              # For some reason, rot13 pops up everywhere
    if [ $# -eq 0 ]; then
        tr '[a-m][n-z][A-M][N-Z]' '[n-z][a-m][N-Z][A-M]'
    else
        echo $* | tr '[a-m][n-z][A-M][N-Z]' '[n-z][a-m][N-Z][A-M]'
    fi
}

#prompt ()
#{
#NAME=`hostname -s`
#ME=`whoami`
#MYPWD=`echo $PWD | sed "s/\/home\/$ME/\~/"`
#echo -ne '\033]0;'$ME'@'$NAME' '$MYPWD' \007'
#unset MYPWD
#}
#if [ "x$DISPLAY" != "x" ]; then
#export PROMPT_COMMAND=prompt
#fi

#export LANG=en_US
