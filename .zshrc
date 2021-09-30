if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

command -v thefuck && eval $(thefuck --alias)

alias git="hub"

if [[ `uname -s` == "Darwin" ]]; then
  alias uuu="mas upgrade && brew update && brew upgrade && softwareupdate -ia"
else
  alias uuu="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && flatpak update -y"
fi

export DENO_INSTALL="$HOME/.deno"

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$HOME/.config/npm/bin"
export PATH="$PATH:$HOME/ThirdPartyRepos/flutter/bin"


export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.symfony/bin"


[[ -d "$DENO_INSTALL" ]] && export PATH="$PATH:$DENO_INSTALL/bin"

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# disable homebrew anonymous analytics
#   https://github.com/Homebrew/brew/blob/master/docs/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

export HOMEBREW_NO_INSECURE_REDIRECT=1
# export HOMEBREW_CASK_OPTS=--require-sha

