#! /usr/bin/env bash

# Download dotfiles
rm -Rf /tmp/dotfiles
git clone https://github.com/skyzyx/dotfiles.git /tmp/dotfiles
rm -Rf /tmp/dotfiles/.git rm -Rf /tmp/dotfiles/README*

# Copy dotfiles
for file in $(find /tmp/dotfiles -type f); do
	cp -fv $file ~/$(basename $file);
done;

# Git files
mv ~/gitconfig ~/.gitconfig
mv ~/gitignore ~/.gitignore

# Add VirtualEnv stuffs
rm -Rf ~/.vendor
pip2.7 install --upgrade virtualenv && \
virtualenv --python python2.7 .vendor
