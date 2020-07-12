zshhome="${HOME}/.zshrc.d"

if [ -d $zshhome -a -r $zshhome -a -x $zshhome ]; then
	for i in $zshhome/*; do
		[[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
	done
fi

