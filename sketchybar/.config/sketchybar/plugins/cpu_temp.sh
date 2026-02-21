#!/bin/sh

TEMP="$(smctemp -c)"
TEMP_INT="${TEMP%.*}"

if [ $TEMP_INT -gt 65 ]; then
  COLOR="0xffd75f5f"
else
  COLOR="0xffffffff"
fi

sketchybar --set "$NAME" label="${TEMP}°C" label.color="$COLOR"
