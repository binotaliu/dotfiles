if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [[ -z `command -v thefuck` ]]; then eval $(thefuck --alias); fi
if [[ -z `command -v hub` ]]; then alias git="hub"; fi

if [[ `uname -s` == "Darwin" ]]; then
  alias uuu="mas upgrade && brew update && brew upgrade && softwareupdate -ia"
  export OPEN_ON_MAKE_EDITOR="open -a \"PhpStorm\""
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

DUSK_CHROME_BINARY=/Applications/Chromium.app/Contents/MacOS/Chromium 

function set-git-gh-remote() {
  if [[ $# -eq 1 ]]; then
    gitRemote="origin"
    ghRepo="$1"
  elif [[ $# -eq 2 ]]; then
    gitRemote="$1"
    ghRepo="$2"
  else
    echo "Usage: $0 {GitRemoteName} <GitHubRepoName>"
    return -1
  fi

  git remote add $gitRemote `gh repo view $ghRepo --json sshUrl --jq ".sshUrl"`
}

# PHP Versions

alias p72="`brew --prefix php@7.2`/bin/php"
alias p74="`brew --prefix php@7.4`/bin/php"
alias p81="`brew --prefix php@8.1`/bin/php"

alias c72="`brew --prefix php@7.2`/bin/php `which composer`"
alias c74="`brew --prefix php@7.4`/bin/php `which composer`"
alias c81="`brew --prefix php@8.1`/bin/php `which composer`"

alias a72="`brew --prefix php@7.2`/bin/php artisan"
alias a74="`brew --prefix php@7.4`/bin/php artisan"
alias a81="`brew --prefix php@8.1`/bin/php artisan"

# Aliases
alias a="php artisan"
alias afs="a migrate:fresh && a db:seed"

alias sail="./vendor/bin/sail"
alias s="./vendor/bin/sail"
alias sa="./vendor/bin/sail artisan"
alias sat="./vendor/bin/sail artisan tinker"
alias safs="sa migrate:fresh && sa db:seed"
alias sc="./vendor/bin/sail composer"

alias c="composer"

alias g="git"
alias gsm="git switch main"
alias gsd="git switch dev"

alias dcu="docker compose up -d"
alias dcr="docker compose run --rm"

alias "??"="gh copilot suggest"
alias "?"="gh copilot explain"

