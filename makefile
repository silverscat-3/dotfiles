deploy: bin zsh nvim xorg termite picom other

bin: 
	@ln -snvf $(HOME)/dotfiles/.bin ~/
	@chmod -R u+x $(HOME)/dotfiles/.bin

zsh:
	@ln -svnf $(HOME)/dotfiles/.z* ~/

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
	
