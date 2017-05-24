#!/usr/bin/env bash

# ttydm_dialogrc="$HOME/.config/ttydm/dialogrc"
ttydm_sessions=(awesome console)
ttydm_sessions_names=("graphical interface" "feeling nerdy...")

function ttydm_menu {
    case "$1" in
        awesome) exec startx ;;
        console)
            clear
            exec /usr/bin/bash --login ;;
        *) echo "Have a good day" ;;
    esac
}
