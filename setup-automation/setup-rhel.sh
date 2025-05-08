#!/bin/bash
while [ ! -f /opt/instruqt/bootstrap/host-bootstrap-completed ]
do
   echo "Waiting for Instruqt to finish booting the VM"
   sleep 1
done
yum remove -y google-rhui-client-rhel8.noarch
yum clean all
subscription-manager config --rhsm.manage_repos=1
subscription-manager register --activationkey=${ACTIVATION_KEY} --org=12451665 --force

dnf install -y tree
TMUX='' tmux new-session -d -s 'Terminal1' > /dev/null 2>&1
tmux set -g pane-border-status top
tmux setw -g pane-border-format ' #{pane_index} #{pane_current_command}'