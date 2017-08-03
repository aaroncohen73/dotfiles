#!/bin/bash

mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/terminator
mkdir -p ~/.vim/bundle

# Install i3 config
ln -s i3config ~/.config/i3/config
ln -s i3statusconfig ~/.config/i3status/config

# Install terminal config/X11 config
ln -s terminatorconfig ~/.config/terminator/config
ln -s .Xresources ~/.Xresources
ln -s .Xmodmap ~/.Xmodmap

# Install vim config
ln -s .vimrc ~/.vimrc
cat vimplugins | xargs -n 1 git clone
cat vimplugins | sed 'y/\// /' | awk '{print $NF}' | xargs -n 1 -I % mv -f % ~/.vim/bundle/%
