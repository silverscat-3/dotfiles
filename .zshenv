typeset -U PATH path
path=("$HOME/.bin" "$GOPATH/bin" "$HOME/.deno/bin" "$(yarn global bin)" "$path[@]")
export PATH

export EDITOR=nvim

