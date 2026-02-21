#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100)
    ICON=""
    COLOR="0xffffffff"   # Green
    ;;
  [6-8][0-9])
    ICON=""
    COLOR="0xfff7d794"   # Yellow
    ;;
  [3-5][0-9])
    ICON=""
    COLOR="0xfff6e58d"   # Orange
    ;;
  [1-2][0-9])
    ICON=""
    COLOR="0xfff5cd79"   # Deeper orange
    ;;
  *)
    ICON=""
    COLOR="0xffd75f5f"   # Red
    ;;
esac

if [[ "$CHARGING" != "" ]]; then
  ICON=""
  COLOR="0xff7ed6df"     # Blue
fi

sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%" icon.color="$COLOR" label.color="$COLOR"
