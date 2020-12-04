source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle commend-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme avit

antigen apply

eval $(thefuck --alias)

export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'

alias git="hub"
alias code="code-insiders"

if [[ `uname -s` -e "Darwin" ]]; then
  alias uuu="brew update && brew upgrade && mas upgrade"
else
  alias uuu="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && flatpak update -y"
fi

export DENO_INSTALL="$HOME/.deno"

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$HOME/.config/npm/bin"
export PATH="$PATH:$HOME/ThirdPartyRepos/flutter/bin"
export PATH="$PATH:$DENO_INSTALL/bin"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.symfony/bin"

[[ -s "/home/binota/.gvm/scripts/gvm" ]] && source "/home/binota/.gvm/scripts/gvm"

# disable homebrew anonymous analytics
#   https://github.com/Homebrew/brew/blob/master/docs/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha


