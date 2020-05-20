set nocompatible
filetype off

set nu

" display invisible characters
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" tab configurations
set expandtab
set tabstop=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'endel/vim-github-colorscheme'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()

filetype plugin indent on

" set theme
let g:airline_powerline_fonts = 1
let g:airline_theme='github'
colorscheme github

