# To avoid potential situation where tty-dm crashes on every TTY, here we
# default to execute tty-dm on tty1 only, and leave other TTYs untouched.
if [[ "$(tty)" == '/dev/tty1' ]]; then
    # This has been set by tty-dm to avoid infinite loop while starting
    # a console
    [[ -n "$TTYDM_SPAWN" ]] && return
    # Avoid executing tty-dm when X11 has already been started.
    [[ -z "$DISPLAY$SSH_TTY$(pgrep xinit)" ]] && exec tty-dm
fi
