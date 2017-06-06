#!/usr/bin/env sh

## Main title display in the up left corner.
# ttydm_maintitle="\Zb$HOSTNAME\Zn main entrance - "`date +"%A %-d %B %Y"`

## TTY on which we should open the graphical session.
#ttydm_vt="vt${$(tty)#/dev/tty}"

## Path tho a dialog config file (color theme…).
## Default is empty, which meens dialog will use its default values.
## CDM repository (https://github.com/ghost1227/cdm) is a good start to
## find dialog color themes.
# ttydm_dialogrc=

## Set various variables while creating the graphical session. The
## wrapper is installed at `/usr/lib/ttydm/xsession`.
## WARNING: setting this variable to anything else than `yes` forces
## you to create and maintain a working `~/.xinitrc` file
# ttydm_run_xwrapper=yes

## Optionaly redirect X server log somewhere.
# ttydm_startxlog=/dev/null

## Name and description of your various startup options.
## By default, we list session available in `/usr/share/xsessions`.
## You can modify this list here or overwrite it.
# ttydm_sessions=(Awesome Gnome Console)
# ttydm_sessions_desc=("Awesome WM" "Modern graphical session" "Gimme prompt!")
# ttydm_sessions_exec=(awesome gnome-session tty)
