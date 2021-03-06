#!/bin/bash

mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/i3pystatus
mkdir -p ~/.config/polybar
mkdir -p ~/.config/terminator
mkdir -p ~/.vim/bundle

# Install i3 config
echo "Installing i3 config..."
ln -sf $PWD/i3config ~/.config/i3/config
ln -sf $PWD/i3statusconfig ~/.config/i3status/config
ln -sf $PWD/i3pystatusconfig.py ~/.config/i3pystatus/config.py
ln -sf $PWD/polybarconfig ~/.config/polybar/config
ln -sf $PWD/polybarlaunch.sh ~/.config/polybar/launch.sh

# Install terminal config/X11 config
echo "Installing terminal config..."
ln -sf $PWD/terminatorconfig ~/.config/terminator/config
ln -sf $PWD/Xresources ~/.Xresources
ln -sf $PWD/Xmodmap ~/.Xmodmap

# zsh config
echo "Installing zsh config..."
ln -sf $PWD/zshrc ~/.zshrc
# TODO: Add support for automatically downloading powerlevel9k theme

# Install vim config
echo "Installing vim config..."
ln -sf $PWD/vimrc ~/.vimrc
cat vimplugins | xargs -n 1 git clone
cat vimplugins | sed 'y/\// /' | awk '{print $NF}' | xargs -n 1 -I % mv -f % ~/.vim/bundle/%
