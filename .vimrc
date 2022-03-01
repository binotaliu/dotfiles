set nocompatible
filetype off

set nu
set noswapfile

" display invisible characters
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" tab configurations
set expandtab
set tabstop=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rakr/vim-one'

call vundle#end()

filetype plugin indent on

" set theme
if system("defaults read -g AppleInterfaceStyle") ==? "dark\n"
  set background=dark
else
  set background=light
endif

" true colour
" set termguicolors
let g:airline_powerline_fonts = 1
let g:airline_theme = 'one'
colorscheme one

syntax on

