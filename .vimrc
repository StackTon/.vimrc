call plug#begin('~/.vim/plugged')

Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

call plug#end()

set encoding=UTF-8
colorscheme desert

let NERDTreeShowHidden=1
let g:coc_global_extensions = [
   \ 'coc-snippets',
   \ 'coc-html',
   \ 'coc-css',
   \ 'coc-pairs',
   \ 'coc-tsserver',
   \ 'coc-eslint',
   \ 'coc-prettier',
   \ 'coc-json',
   \ ]

:set number
:set tabstop=4
:set shiftwidth=4
:set expandtab
