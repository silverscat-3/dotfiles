#!/bin/zsh
zinit_home="$HOME/.cache/zinit"
zinit_bin="${zinit_home}/bin"

# zinitが存在しなければGithubからクローン
if [ ! -d ${zinit_home} ]; then mkdir ${zinit_home}; fi
if [ ! -d ${zinit_bin} ]; then git clone https://github.com/zdharma/zinit.git ${zinit_bin}; fi

# zinitを設定
declare -A ZINIT
ZINIT[HOME_DIR]=${zinit_home}

# zinitを読み込む
source ${zinit_bin}/zinit.zsh
autoload -Uz _zinit; (( ${+_comps} )) && _comps[zinit]=_zinit

zinit ice from"gh-r" as"program"; zinit load junegunn/fzf-bin

zinit ice wait"!0"; zinit load zdharma/fast-syntax-highlighting
zinit ice wait"!0"; zinit load zsh-users/zsh-autosuggestions
zinit ice wait"!0"; zinit load sindresorhus/pure

