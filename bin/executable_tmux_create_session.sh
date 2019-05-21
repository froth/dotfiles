#!/bin/bash
SESSION=default

tmux -2 new-session -d -s default
tmux new-window -t $SESSION:1 -n 'Logs' 'journalctl --all -b -f'

tmux select-window -t $SESSION:0
