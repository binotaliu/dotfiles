#!/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

cp "${DOTFILES_DIR}/.zshrc" ~/.zshrc
cp "${DOTFILES_DIR}/.zpreztorc" ~/.zpreztorc
cp "${DOTFILES_DIR}/.gitconfig" ~/.gitconfig

git config --global --unset gpg.program
git config --global core.editor "code --wait"

