#! /usr/bin/env bash

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

c_dim=$(tput dim)
c_bold=$(tput bold)
c_italic=$(tput sitm)
c_underline=$(tput smul)

fg_black=$(tput setaf 0) # Foreground, Normal
fg_red=$(tput setaf 1)
fg_green=$(tput setaf 2)
fg_yellow=$(tput setaf 3)
fg_blue=$(tput setaf 4)
fg_purple=$(tput setaf 5)
fg_cyan=$(tput setaf 6)
fg_white=$(tput setaf 7)
fg_bblack=$(tput setaf 8) # Foreground, Bright
fg_bred=$(tput setaf 9)
fg_bgreen=$(tput setaf 10)
fg_byellow=$(tput setaf 11)
fg_bblue=$(tput setaf 12)
fg_bpurple=$(tput setaf 13)
fg_bcyan=$(tput setaf 14)
fg_bwhite=$(tput setaf 15)
bg_black=$(tput setab 0) # Background
bg_red=$(tput setab 1)
bg_green=$(tput setab 2)
bg_yellow=$(tput setab 3)
bg_blue=$(tput setab 4)
bg_purple=$(tput setab 5)
bg_cyan=$(tput setab 6)
bg_white=$(tput setab 7)
reset=$(tput sgr0) # Reset

# Function which displays color table
colors256() {
  local c i j

  printf "Standard 16 colors\n"
  for ((c = 0; c < 17; c++)); do
          printf "|%s%3d%s" "$(tput setaf "$c")" "$c" "$(tput sgr0)"
  done
  printf "|\n\n"

  printf "Colors 16 to 231 for 256 colors\n"
  for ((c = 16, i = j = 0; c < 232; c++, i++)); do
          printf "|"
          ((i > 5 && (i = 0, ++j))) && printf " |"
          ((j > 5 && (j = 0, 1)))   && printf "\b \n|"
          printf "%s%3d%s" "$(tput setaf "$c")" "$c" "$(tput sgr0)"
  done
  printf "|\n\n"

  printf "Greyscale 232 to 255 for 256 colors\n"
  for ((; c < 256; c++)); do
          printf "|%s%3d%s" "$(tput setaf "$c")" "$c" "$(tput sgr0)"
  done
  printf "|\n"
}
