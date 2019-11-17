call plug#begin('~/.vim/plugged')

Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'lifepillar/vim-solarized8'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

call plug#end()

set termguicolors
set background=light
set encoding=UTF-8
silent! colorscheme solarized8

let NERDTreeShowHidden=1
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
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
:set listchars=eol:¬,tab:>␣,trail:~,extends:>,precedes:<,space:·
:set list
:set tabstop=4
:set shiftwidth=4
:set expandtab
