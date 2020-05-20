source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle commend-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme avit

antigen apply

export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'

alias git="hub"
alias code="code-insiders"

export DENO_INSTALL="$HOME/.deno"

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.npm/bin"
export PATH="$PATH:$HOME/ThirdPartyRepos/flutter/bin"
export PATH="$PATH:$DENO_INSTALL/bin"

