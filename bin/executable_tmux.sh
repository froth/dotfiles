#!/bin/bash
if tmux list-sessions | grep default; then
    tmux attach-session -t default 
else
    tmux_create_session.sh
    tmux attach-session -t default 
fi
