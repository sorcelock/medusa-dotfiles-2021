#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


export TERMINAL="kitty"
export EDITOR="vim"
export BROWSER="google-chrome-stable"

greet

if [[ "$(tty)" = "/dev/tty1" ]]; then
        exec startx
fi
