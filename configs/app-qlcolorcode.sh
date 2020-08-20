#! /usr/bin/env bash

# Setting the text encoding (default is UTF-8).  Two settings are required.  The
# first sets Highlight's encoding, the second sets Webkit's:
# defaults write org.n8gray.QLColorCode textEncoding UTF-16
# defaults write org.n8gray.QLColorCode webkitTextEncoding UTF-16

# Setting the font:
defaults write org.n8gray.QLColorCode font "Meslo LG S"

# the font size:
defaults write org.n8gray.QLColorCode fontSizePoints 9

# the color style (see http://www.andre-simon.de/dokuwiki/doku.php?id=theme_examples
defaults write org.n8gray.QLColorCode hlTheme ide-xcode

# any extra command-line flags for Highlight (see below):
defaults write org.n8gray.QLColorCode extraHLFlags '-l -W'

# the maximum size (in bytes) for previewed files:
defaults write org.n8gray.QLColorCode maxFileSize 1000000
