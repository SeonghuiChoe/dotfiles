" Vim plugins
call plug#begin('~/.vim/plugged')

" Navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'

" Git
Plug 'tpope/vim-fugitive'

" Programming
" Comment functions
Plug 'scrooloose/nerdcommenter'

call plug#end()

" Navigating between windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <c-t> :tabnew<cr>

" Clear last search highlighting
nnoremap <Space> :noh<cr>

set pastetoggle=<F2>        " Toggle insert mode for F2
set number                  " Show line numbers
set tabstop=4               " Set the default tabstop
set softtabstop=4
set shiftwidth=4
set expandtab               " Make tabs into spaces (set by tabstop)
set hlsearch                " Highlight search
syntax on                   " Enable syntax

" Highlight extra white spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Extend .vimrc
runtime! vim-include/*.vim
