#!/usr/bin/env bash

function run {
	if ! pgrep $1 ; then
		$@&
	fi
}

run xautolock -time 10 -locker 'env XSECURELOCK_SAVER=saver_xscreensaver XSECURELOCK_PASSWORD_PROMPT=asterisks xsecurelock'
run picom -CGb --config ~/.config/picom/config
run ibus-daemon -drx
run thunar --deamon
run yubioath-desktop
run discord
run slack
run skypeforlinux
run telegram-desktop

