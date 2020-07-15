#!/bin/zsh
if [[ $SHLVL = 2 ]]; then
	if [[ ! -n $TMUX ]]; then
		ID="`tmux list-sessions`"
		if [[ -z "$ID" ]]; then
			tmux new-session && exit
		fi

		create_new_session="Create new tmux session"
		ID="$ID\n${create_new_session}:"

		ID="`echo $ID | fzf | cut -d: -f1`"
		if [[ "$ID" = "${create_new_session}" ]]; then
			tmux new-session && exit
		else
			tmux attach-session -t "$ID" && exit
		fi
	fi
fi

