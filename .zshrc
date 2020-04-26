source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle commend-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme avit

antigen apply

alias git="hub"

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.npm/bin"
export PATH="$PATH:$HOME/ThirdPartyRepo/flutter/bin"

