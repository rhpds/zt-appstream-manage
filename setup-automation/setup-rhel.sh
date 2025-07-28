#!/bin/bash
dnf install -y tree
TMUX='' tmux new-session -d -s 'Terminal1' > /dev/null 2>&1
tmux set -g pane-border-status top
tmux setw -g pane-border-format ' #{pane_index} #{pane_current_command}'
