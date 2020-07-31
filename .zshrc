zshhome="${HOME}/.zshrc.d"

if [ -d $zshhome -a -r $zshhome -a -x $zshhome ]; then
	for i in $zshhome/*.zsh; do
		[[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
	done
fi

if [ $SHLVL = "3" ]; then
	eval $(keychain --eval -Q --quiet ~/.ssh/id_ecdsa)
	neofetch
fi

setopt auto_cd
