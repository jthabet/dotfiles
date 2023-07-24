all: setup

setup:
	mkdir -p ~/.config/alacritty

	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux/tmuxconf ~/.tmux.conf

.PHONY: setup