#!/usr/bin/env bash

declare -A WORKSPACE_ICONS=(
  [1]=""   # Browser
  [2]=""   # Code editor
  [3]=""   # Terminal
  [4]=""   # Databases/Docker
  [5]=""
  [6]=""
  [7]=""
  [8]=""   # Planning
  [9]="󰭹"   # Communication
  [0]=""   # Other
)

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    icon=${WORKSPACE_ICONS[$1]:-$1}
    sketchybar --set $NAME background.color=0xff3C4150 background.border_color=0xff444B5C label.color=0xff94bfce label="$icon"
else
    sketchybar --set $NAME background.color=0xff313440 background.border_color=0xff444B5C label.color=0xff444B5C label="$1"
fi
