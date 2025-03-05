#!/usr/bin/env bash

COLOR="$BLUE"

sketchybar --add event reset_timer

timer=(
  script="${PLUGIN_DIR}/reset_timer.sh"
  icon=""
  click_script="sketchybar --set timer popup.drawing=toggle ; sketchybar --trigger reset_timer"
)

stopwatch=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py"
  label="SW Mode"
)

preset1=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 180"
  label="3 min"
)

preset2=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 300"
  label="5 min"
)

preset3=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 600"
  label="10 min"
)

preset4=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 1200"
  label="20 min"
)

preset5=(
  click_script="sketchybar --set timer popup.drawing=toggle ; python3 ${PLUGIN_DIR}/timer.py 3600"
  label="1 hour"
)

sketchybar --add item timer right \
  --set timer "${timer[@]}" \
  background.height=26 \
  popup.drawing=off \
  popup.background="$COLOR" \
  icon.padding_left=20 \
  icon.padding_right=0 \
  label.padding_left=0 \
  label.padding_right=18 \
  background.padding_left=5 \
  background.padding_right=5 \
  icon.color="$COLOR" \
  background.corner_radius="$CORNER_RADIUS" \
  background.border_width="$BORDER_WIDTH" \
  background.border_color="$BASE" \
  background.color="$CRUST" \
  popup.background.border_color="$BASE" \
  background.drawing=on \
  --subscribe timer reset_timer \
  --add item timer.stopwatch popup.timer \
  --set timer.stopwatch "${stopwatch[@]}" \
  --add item timer.preset1 popup.timer \
  --set timer.preset1 "${preset1[@]}" \
  --add item timer.preset2 popup.timer \
  --set timer.preset2 "${preset2[@]}" \
  --add item timer.preset3 popup.timer \
  --set timer.preset3 "${preset3[@]}" \
  --add item timer.preset4 popup.timer \
  --set timer.preset4 "${preset4[@]}" \
  --add item timer.preset5 popup.timer \
  --set timer.preset5 "${preset5[@]}"
