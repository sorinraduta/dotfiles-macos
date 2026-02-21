#!/bin/sh

LABEL="$(curl https://wttr.in/\?format\="%t")"
ICON="$(curl https://wttr.in/\?format\="%c")"

sketchybar --set "$NAME" label="$LABEL" icon="$ICON" icon.font="Hack Nerd Font:Bold:11.0"
