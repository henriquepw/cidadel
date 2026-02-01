#!/bin/bash
STATE_FILE="/tmp/niri-column-width-state"

if [ ! -f "$STATE_FILE" ] || [ "$(cat $STATE_FILE)" = "50" ]; then
  echo "100" >"$STATE_FILE"
  niri msg action set-column-width "100%"
else
  echo "50" >"$STATE_FILE"
  niri msg action set-column-width "50%"
fi
