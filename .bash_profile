# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

########################################################################################

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Git Extended Prompt
export GIT_EXTENDED_PROMPT="true"
export GIT_EXTENDED_PROMPT_COLOR="dark"
export GIT_EXTENDED_PROMPT_TIME="true"
[ -f /etc/profile.d/colors.sh ] && source /etc/profile.d/colors.sh
[ -f /etc/profile.d/prompt.sh ] && source /etc/profile.d/prompt.sh

# VirtualEnv
[ -f ~/vendor/bin/activate ] && source ~/vendor/bin/activate

# Directory traversal
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Files & directories
alias l.='ls -d .*'
alias lsd='ls -al | grep ^d' # Only list directories, including hidden ones
alias ls="ls -hF"
alias ll="ls -lahF"

# Find
alias ff="find * -follow | grep -i"
alias gg="find . -name '*${2}' -print | xargs grep -nir '${1}';"

# Development
alias diffd="/usr/bin/diff -d -U"
alias tailf="/usr/bin/tail -f -n 500"
command -v hd > /dev/null || alias hd="hexdump -C"

# Bash
alias grep='grep --color=auto'
alias tm='ps -ef | grep -i'
alias active='grep -v -e "^$" -e"^ *#"'
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'
alias salt='openssl rand -base64 32'
alias lastmod="ls -rt | tail -n1"

# Git
alias gst="git status -sb"
alias gp="git push"
alias gd="git difftool"
alias gist="gist -c"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# ip
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTTIMEFORMAT='%F %T '

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# Prefer US English and use UTF-8
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# Highlight section titles in manual pages
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X";

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto";

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

########################################################################################

function mkd() {
    mkdir -p "$1" && cd "$1";
}

# ip
function geoip {
    curl -s http://httpbin.org/ip
}

# Determine size of a file or total size of a directory
function fs() {
    if du -b /dev/null > /dev/null 2>&1; then
        local arg=-sbh
    else
        local arg=-sh
    fi
    if [[ -n "$@" ]]; then
        du $arg -- "$@"
    else
        du $arg .[^.]* *
    fi
}

# Use Git’s colored diff when available
hash git &>/dev/null
if [ $? -eq 0 ]; then
    function diff() {
        git diff --no-index --color-words "$@"
    }
fi
