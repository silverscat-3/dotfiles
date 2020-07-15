#!/bin/zsh
export ZPLUG_HOME="$HOME/.cache/zplug"

if [[ ! -d $ZPLUG_HOME ]]; then
	git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug 'junegunn/fzf-bin', from:gh-r, as:command, rename-to:fzf
zplug 'zdharma/fast-syntax-highlighting'
zplug 'zsh-users/zsh-autosuggestions'
zplug 'mafredri/zsh-async'
zplug 'sindresorhus/pure'

if ! zplug check --verbose; then
	printf "Install [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load --verbose
