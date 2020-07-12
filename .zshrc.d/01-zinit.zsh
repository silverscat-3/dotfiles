#!/bin/zsh

ZINIT_HOME="$HOME/.cache/zinit"
ZINIT_BIN="$ZINIT_HOME/bin"

typeset -U PATH path
path=("$ZINIT_HOME" "$path[@]")
export PATH

# zinitが見当たらない時はリポジトリからクローンする。
if [[ ! -d $ZINIT_HOME ]]; then
	git clone https://github.com/zdharma/zinit.git $ZINIT_BIN
fi

source $ZINIT_BIN/zinit.zsh

autoload -Uz _zinit; (( ${+_comps} )) && _comps[zinit]=_zinit

# コマンドをハイライトするプラグインをのんびりロードする
zinit ice wait'1' atload'_zsh_highlight'
zinit light 'zdharma/fast-syntax-highlighting'

# コマンドをサジェストするプラグインをゆっくりロードする
zinit ice wait'1' atload'_zsh_autosuggest_start'
zinit light 'zsh-users/zsh-autosuggestions'

# プロンプトをゆったりロードする
zinit ice pick'pure.zsh' wait'!0'
zinit light 'sindresorhus/pure'

