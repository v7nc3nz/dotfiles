#!/bin/bash

declare options=("alacritty
awesome
nvim
zsh
tmux
vim
theme
exports
dmenu
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alacritty)
		choice="$HOME/.config/alacritty/alacritty.yml"
	;;
	awesome)
		choice="$HOME/.config/awesome/rc.lua"
	;;
	nvim)
		choice="$HOME/.config/nvim/init.vim"
	;;
	vim)
		choice="$HOME/.vimrc"
	;;
  tmux)
    choice="$HOME/.tmux.conf"
  ;;
	zsh)
		choice="$HOME/.zshrc"
	;;
  theme)
    choice="$HOME/.config/awesome/themes/multicolor/theme.lua"
  ;;
  exports)
    choice="$HOME/.config/exports/.profile"
  ;;
  dmenu)
    choice="$HOME/.config/dmenu/dmenu-edit-config.sh"
  ;;
  *)
		exit 1
	;;
esac

tilix -e nvim "$choice"
