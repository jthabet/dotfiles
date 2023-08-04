all: setup

setup:
	mkdir -p ~/.config/alacritty
	mkdir -p ~/.config/tmux

	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.config/alacritty/alacritty.yml
	[ -f ~/.config/tmux/tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.config/tmux/tmux.conf
clean:
	rm -f ~/.config/tmux/tmux.conf
	rm -f ~/.config/alacritty/alacritty.yml

.PHONY: all setup clean
