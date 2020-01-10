#!/usr/bin/env bash

export LOCALAPPS=$HOME/.local/share/applications/
export LOCALBIN=$HOME/.local/bin/

mkdir -p $LOCALBIN $LOCALAPPS

if [ -e RuneLite.desktop ] && [ -e RuneLite.png ] && [ -e $HOME/Downloads/RuneLite.jar ]; then
	cp RuneLite.desktop RuneLite.png $LOCALAPPS
	chmod u+x RuneLite
	cp RuneLite $HOME/Downloads/RuneLite.jar $LOCALBIN
fi

if ! grep -q ".local/bin" ~/.profile; then
	echo "\"PATH=\$PATH:~/.local/bin/\"" >> ~/.profile
fi
