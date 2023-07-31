all: setup

setup:
	mkdir -p ~/.config/alacritty

	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.config/alacritty/alacritty.yml
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmuxconf ~/.tmux.conf
clean:
	rm -f ~/.tmux.conf
	rm -f ~/.config/alacritty/alacritty.yml

.PHONY: all setup clean
