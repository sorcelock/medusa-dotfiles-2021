emulate sh -c 'source /etc/profile'


[[ -f ~/.zshrc ]] && . ~/.zshrc


export TERMINAL="kitty"
export EDITOR="vim"
export BROWSER="google-chrome-stable"

greet

if [[ "$(tty)" = "/dev/tty1" ]]; then
        exec startx
fi
