#!/bin/bash

echo 
echo '|\ /| /\ /|\ |// | |\/| /' 
echo '| X | \/  |  |/  | |  | --'
echo '|/ \| /\  |  |   | |  |  / by silverscat_3'
echo


if [ ! -d ~/dotfiles ];then
	git clone -d 1 https://github.com/silverscat-3/dotfiles $HOME/dotfiles

	cd $HOME/dotfiles && make deploy
else
	echo There are already dotfiles. STOP.
	exit 1
fi


