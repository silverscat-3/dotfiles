deploy: zsh nvim xorg termite picom other

zsh:
	@ln -svnf $(HOME)/.zsh* ~/

nvim:
	@ln -svnf $(HOME)/dotfiles/.config/nvim/ ~/.config/

xorg:
	@ln -svnf $(HOME)/dotfiles/.x* ~/

termite:
	@ln -svnf $(HOME)/dotfiles/.config/termite ~/.config/

picom:
	@ln -svnf $(HOME)/dotfiles/.config/picom/ ~/.config/

other:
	@ln -svnf $(HOME)/dotfiles/.env ~/

