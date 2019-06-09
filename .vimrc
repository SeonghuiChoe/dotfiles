" Vim plugins
call plug#begin('~/.vim/plugged')

" Navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

set number
syntax on
set ts=4
set et

" Extend .vimrc
runtime! vim-include/*.vim
