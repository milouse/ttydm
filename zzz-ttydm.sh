# To avoid potential situation where tty-dm crashes on every TTY, here we
# default to execute tty-dm on tty1 only, and leave other TTYs untouched.
if [[ "$(tty)" == '/dev/tty1' ]]; then
    # You must export TTYDM_SPAWN in your ~/.ttydm_menu.sh
    # to avoid infinite tty-dm loop while starting a console
    [[ -n "$TTYDM_SPAWN" ]] && return
    # You must define a per user menu in ~/.config/ttydm/rc.sh.
    # An example is available in /etc/skel/ttydm_rc.sh
    [[ ! -f "$HOME/.config/ttydm/rc.sh" ]] && return
    # Avoid executing tty-dm when X11 has already been started.
    [[ -z "$DISPLAY$SSH_TTY$(pgrep xinit)" ]] && exec tty-dm
fi
