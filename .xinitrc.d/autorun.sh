#!/usr/bin/env bash

function run {
	if ! pgrep $1 ; then
		$@&
	fi
}

run picom -CGb --config ~/.config/picom/config
run ibus-daemon -drx

