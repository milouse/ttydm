# TTYDM

A linux console greeter, inspired
by [CDM](https://github.com/ghost1227/cdm)

## Dependancies

 - xorg-xinit
 - xorg-xauth
 - xorg-xrdb
 - mcookie
 - dialog

## Install

    # make

or

    $ sudo make

You can use the `uninstall` target to remove it:

    # make uninstall

or

    $ sudo make uninstall

## Configuration

An example file is provided and should be installed in
`/usr/lib/ttydm/rc.sh`. A copy of this file should be created as
`~/.config/ttydm/rc.sh` to be taken into account. This example file
contains all the possible variables with their default values.

To change one, just uncomment it and change its value.

## Color themes

Like [CDM](https://github.com/ghost1227/cdm), **tty-dm** is build upon
`dialog`. Thus we are "compatible" with CDM theme or any other `dialog`
color theme source.

## Contribute

Main development efforts are conducts on https://git.deparis.io/ttydm

Bug reports should be created on
the [project's redmine](https://projects.deparis.io/projects/ttydm).
