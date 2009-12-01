#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
setopt APPEND_HISTORY
## for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

#colors
autoload -U colors

bindkey -e
# custom aliases (from old .bashrc)

alias ls='ls -alF --color'
alias traceroute='/usr/sbin/traceroute'
alias l='ls -alF --color'

##ssh_port_forward-forwarding-aliases
alias halcyon-mail='ssh -L 1234:halcyon.hotblack.net:25 -L 1235:mail.aeon.com.my:110 -L 1237:halcyon.hotblack.net:110 halcyon.hotblack.net -C'
alias sng-mail_aeon='ssh -l ccha32 -L 1234:sng.its.monash.edu.au:25 -L 1235:mail.aeon.com.my:110 sng.its.monash.edu.au -C -X'
alias sng-mail='ssh -l ccha32 -L 1234:sng.its.monash.edu.au:25 -L 1235:mail.aeon.com.my:110 -L 1237:bytebot.net:110 sng.its.monash.edu.au -C -X'
alias yoyo-irc='ssh yoyo.its.monash.edu.au -L 1236:irc.stealth.net:6667 -X'
alias bytebot.net-sendmail='ssh bytebot.net -L 1234:bytebot.net:25 -C'
alias sng-sendmail='ssh -l ccha32 -L 1234:sng.its.monash.edu.au:25 sng.its.monash.edu.au -X -C'

##machines
alias yoyo='ssh yoyo.its.monash.edu.au -X'
alias tazo='ssh yoyo-old.its.monash.edu.au -L 1236:irc.stealth.net:6667'
alias bytebot.net='ssh bytebot.net'
alias halcyon='ssh halcyon.hotblack.net'
alias sng='ssh -l ccha32 sng.its.monash.edu.au -C'
alias renatech='ssh -l renatech arenatechniques.com -C'

##workstation specific aliases (hermione)
alias makefaq='~/bin/makefaq-2.4/makefaq.py'
alias journal='rsync -e ssh -vzra ~/WWW/journal.html byte@bytebot.net:~/www/journal.html'
alias g='~/bin/goofey'

# custom zsh prompt
#PROMPT='[%B%n@%m%b]-[%y]-[%T-%W]%# %~ '
# hostname username(underlined) time pwd(bold; max 30 chars.) > or #
PROMPT='%n@%U%m%u %B%30<..<%~%b %(!.#.>)'
RPROMPT='%T'
