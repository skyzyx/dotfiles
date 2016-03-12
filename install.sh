#! /usr/bin/env bash

rm -Rf /tmp/dotfiles
git clone https://github.com/skyzyx/dotfiles.git /tmp/dotfiles
rm -Rf /tmp/dotfiles/.git rm -Rf /tmp/dotfiles/README*

for file in $(find /tmp/dotfiles -type f); do
	cp -fv $file ~/$(basename $file);
done;
