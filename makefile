deploy: bin zsh tmux fontconfig libskk nvim xorg termite picom gtk other

bin: 
	@ln -snvf $(HOME)/dotfiles/.bin ~/
	@chmod -R u+x $(HOME)/dotfiles/.bin

zsh:
	@ln -svnf $(HOME)/dotfiles/.z* ~/

tmux:
	@ln -svnf $(HOME)/dotfiles/.tmux.d ~/

fontconfig:
	@ln -svnf $(HOME)/dotfiles/.config/fontconfig ~/.config/

nvim:
	@ln -svnf $(HOME)/dotfiles/.config/nvim/ ~/.config/

xorg:
	@ln -svnf $(HOME)/dotfiles/.x* ~/

libskk:
	@ln -svnf $(HOME)/dotfiles/.config/libskk ~/.config/

termite:
	@ln -svnf $(HOME)/dotfiles/.config/termite ~/.config/

alacritty:
	@ln -svnf $(HOME)/dotfiles/.config/alacritty ~/.config/

picom:
	@ln -svnf $(HOME)/dotfiles/.config/picom/ ~/.config/

gtk:
	@ln -svnf $(HOME)/dotfiles/.config/gtk-* ~/.config/

other:
	@ln -svnf $(HOME)/dotfiles/.env ~/
	
