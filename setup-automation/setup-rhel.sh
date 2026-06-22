#!/bin/bash

# Unregister and register the VM
subscription-manager clean
subscription-manager register --activationkey=12-5-22-instruqt --org=12451665 --force

TMUX='' tmux new-session -d -s 'Terminal1' > /dev/null 2>&1
tmux set -g pane-border-status top
tmux setw -g pane-border-format ' #{pane_index} #{pane_current_command}'
