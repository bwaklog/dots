#!/usr/bin/env sh

sketchybar --add item     calendar right                    \
           --set calendar icon=cal                          \
                          icon.font="$FONT:Black:12.0"      \
                          icon.color=$BLACK                 \
                          icon.padding_right=0              \
                          icon.padding_left=10               \
                          icon.align=center                  \
                          label.width=60                    \
                          label.align=center                 \
                          background.padding_left=10        \
                          update_freq=30                    \
                          script="$PLUGIN_DIR/calendar.sh"  \
                          click_script="$PLUGIN_DIR/zen.sh" \
                          label.color=$BLACK                \
                          label.font="$FONT:Black:12.0"      \
                          align=center                      \
                          background.color=0xffb8c0e0       \
                          background.height=24              \
                          background.corner_radius=9