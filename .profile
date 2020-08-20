#! /usr/bin/env bash

if [ -x /usr/libexec/path_helper ]; then
    eval $(/usr/libexec/path_helper -s)
fi

if [ "${BASH-no}" != "no" ]; then
    [ -r /etc/bashrc ] && . /etc/bashrc
fi

# Vagrant
if [ -f $(brew --prefix)/etc/bash_completion.d/vagrant ]; then
    source $(brew --prefix)/etc/bash_completion.d/vagrant
fi

# Source SwiftEnv
if which swiftenv >/dev/null; then
    eval "$(swiftenv init -)"
fi

# Load custom data
# If this configuration is shared across machines, source a non-synced, machine-specific file to overwrite any values
if [ -f ~/.environment_profile ]; then
    source ~/.environment_profile
fi

# Fuzzy Finder
# $(brew --prefix)/opt/fzf/install
if [ -f ~/.fzf.bash ]; then
    source ~/.fzf.bash
fi

# https://github.com/go-jira/jira
if [ -f ~/bin/jira ]; then
    eval "$(jira --completion-script-bash)"
fi

# aws-cli
complete -C aws_completer aws

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,colors,exports,functions,aliases,aws_settings,bash_prompt,completes,git_settings,shellopts}; do
    [ -r "$file" ] && source "$file"
done
unset file

# asdf
if [ -f $HOME/.asdf/asdf.sh ]; then
    eval "$(direnv hook bash)"
    source $HOME/.asdf/asdf.sh
fi

# golangci-lint
source <(golangci-lint completion bash)

# newrelic
source <(newrelic completion --shell bash)
source <(nr1 autocomplete:script bash)

# iTerm2
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
