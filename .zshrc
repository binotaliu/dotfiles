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
export PATH="$PATH:/Applications/PhpStorm.app/Contents/MacOS"


export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.symfony/bin"

export PATH="/Users/Shared/DBngin/mysql/8.0.33/bin:$PATH"

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

alias p72="/Users/binota/Library/Application\\ Support/Herd/bin/php72"
alias p74="/Users/binota/Library/Application\\ Support/Herd/bin/php74"
alias p81="/Users/binota/Library/Application\\ Support/Herd/bin/php81"

alias c72="/Users/binota/Library/Application\\ Support/Herd/bin/php72 `which composer`"
alias c74="/Users/binota/Library/Application\\ Support/Herd/bin/php74 `which composer`"
alias c81="/Users/binota/Library/Application\\ Support/Herd/bin/php81 `which composer`"

alias a72="/Users/binota/Library/Application\\ Support/Herd/bin/php72 artisan"
alias a74="/Users/binota/Library/Application\\ Support/Herd/bin/php74 artisan"
alias a81="/Users/binota/Library/Application\\ Support/Herd/bin/php81 artisan"

# Aliases
alias a="php artisan"
alias afs="a migrate:fresh --seed"

alias sail="./vendor/bin/sail"
alias s="./vendor/bin/sail"
alias sa="./vendor/bin/sail artisan"
alias sat="./vendor/bin/sail artisan tinker"
alias safs="sa migrate:fresh --seed"
alias sc="./vendor/bin/sail composer"

alias c="composer"

alias g="git"
alias gsm="git switch main"
alias gsd="git switch dev"

alias sd="npx shadcn-vue@latest"

function _check_multiple_docker_compose {
  running_compose_count=$(docker compose ls --format json | jq '[.[] | select(.Status | test("running"))] | length')

  if [[ $running_compose_count -gt 0 ]]; then
    echo "There are one or more Docker Compose service(s) currently running. Are you sure you want to start another? (Currently $running_compose_count running)"
    printf "Continue (y/N)? "
    read choice
    case "$choice" in
      y|Y ) echo "Proceeding...";;
      * ) echo "Operation cancelled."; exit 1;;
    esac
  fi
}

function _autodetect_dockercompose_file_flag {
  compose_file=""

  if [[ -f "docker-compose.yml" ]]; then
    compose_file="docker-compose.yml"
  elif [[ -f "docker-compose.yaml" ]]; then
    compose_file="docker-compose.yaml"
  elif [[ -f "docker/docker-compose.yml" ]]; then
    compose_file="docker/docker-compose.yml"
  elif [[ -f "docker/docker-compose.yaml" ]]; then
    compose_file="docker/docker-compose.yaml"
  fi

  if [[ -n $compose_file ]]; then
    echo "-f ${compose_file}"
  fi
}

function _autodetect_dockercompose {
  docker compose $(_autodetect_dockercompose_file_flag) "$@"
}

alias dcu="_check_multiple_docker_compose && _autodetect_dockercompose up -d"
alias dcd="_autodetect_dockercompose down"
alias dcr="_autodetect_dockercompose run --rm"
alias com="_autodetect_dockercompose"

alias "??"="gh copilot suggest"
alias "?"="gh copilot explain"


# Herd injected PHP binary.
export PATH="/Users/binota/Library/Application Support/Herd/bin/":$PATH
# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/binota/Library/Application Support/Herd/config/php/81/"
# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/binota/Library/Application Support/Herd/config/php/82/"
# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/binota/Library/Application Support/Herd/config/php/83/"



# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/binota/Library/Application Support/Herd/config/php/74/"


# Herd injected NVM configuration
export NVM_DIR="/Users/binota/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/binota/Library/Application Support/Herd/config/php/84/"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/binota/.lmstudio/bin"
