#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## PATH ##
export PATH="${PATH}:${HOME}/.local/bin/"

## PS1 ##
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

#PS1='[\u@\h \W]\$ '

set -o vi


## Aliases ##
#alias ls='ls --color=auto'
alias ls='exa '
alias rm='rm -i'
alias mv='mv -i'
alias winshot='gnome-screenshot -d 1 -w > /dev/null 2>&1'
#alias mpc='mpc --host "/home/nya/.config/mpd/socket"'
alias pip-upgrade='pip freeze --user | cut -d'=' -f1 | xargs -n1 pip install -U'
#alias youtube-dl='youtube-dl -o "%(title)s.%(ext)s" '
alias ytdl='youtube-dl -o "%(title)s.%(ext)s" '
alias ytdlf='youtube-dl -f bestvideo+bestaudio '
alias ytdla='youtube-dl -x --audio-format mp3 --audio-quality 0 -o "%(title)s.%(ext)s" '
alias system_upgrade='sudo reflector --latest 30 --score 30 -n 30 --sort rate -p https --save /etc/pacman.d/mirrorlist && yay -Syyu'
alias mirror-refresh='sudo reflector --latest 30 --score 30 -n 30 --sort rate -p https --save /etc/pacman.d/mirrorlist && yay -Syy'
alias grep="grep --color=auto"
alias ssh='TERM=xterm-256color ssh'
alias mount-drive='udisksctl mount -b'
alias unmount-drive='udisksctl unmount -b'

