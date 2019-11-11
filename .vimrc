set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'

Plugin 'lifepillar/vim-solarized8'

Plugin 'scrooloose/nerdtree'

Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --js-completer' }


let g:deoplete#enable_at_startup = 1

Plugin 'w0rp/ale'

Plugin 'vim-gitgutter'

Plugin 'jiangmiao/auto-pairs'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set termguicolors
set background=light
colorscheme solarized8

let g:ale_linters = {'javascript': ['eslint']}
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}

:set number

:set listchars=eol:¬,tab:>␣,trail:~,extends:>,precedes:<,space:·
:set list

:set tabstop=4
:set shiftwidth=4
:set expandtab


let NERDTreeShowHidden=1



filetype plugin on
set omnifunc=syntaxcomplete#Complete

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
