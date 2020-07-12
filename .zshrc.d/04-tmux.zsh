#!/bin/zsh
tmux_count=$(ps -ax | grep '[t]mux' | wc -l)

if [[ $SHLVL = 2 && $tmux_count = 0 ]]; then
	tmux -u new-session
elif [[ $SHLVL = 2 && $tmux_count = 1 ]]; then
	tmux -u attach
fi

