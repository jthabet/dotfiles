.PHONY: all setup clean

all: setup

setup:
	mkdir -p ~/.config/alacritty
	mkdir -p ~/.config/tmux
  mkdir -p ~/.config/fish

	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.config/alacritty/alacritty.yml
	[ -f ~/.config/tmux/tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.config/tmux/tmux.conf
	[ -f ~/.config/fish/config.fish ] || ln -s $(PWD)/config.fish ~/.config/fish/config.fish
clean:
	rm -f ~/.config/tmux/tmux.conf
	rm -f ~/.config/alacritty/alacritty.yml
  rm -f ~/.config/fish/config.fish

