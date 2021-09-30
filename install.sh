#!/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

DOTFILES_DIR="/workspaces/.codespaces/.persistedshare/dotfiles/"

cp "${DOTFILES_DIR}/.zshrc" ~/.zshrc
cp "${DOTFILES_DIR}/.zpreztorc" ~/.zpreztorc
cp "${DOTFILES_DIR}/.gitconfig" ~/.gitconfig

