" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

" what is the name of the directory containing this file?
let s:portable = expand('<sfile>:p:h')

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'godlygeek/csapprox'
Bundle 'Raimondi/delimitMate'
Bundle 'docunext/closetag.vim'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/Better-CSS-Syntax-for-Vim'
Bundle 'Pychimp/vim-luna'
Bundle 'bling/vim-airline'
Bundle "pangloss/vim-javascript"
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'othree/html5.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'
Bundle 'vim-scripts/utl.vim'

" Command-T
Bundle 'wincent/Command-T'

" Set the Color Scheme
colorscheme luna

" Airline Config
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_inactive_collapse=1

" JavaScript Configs
let javascript_enable_domhtmlcss=1

" Smartindention Configs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Set the CTRL+S command
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" Configure Font
if has('gui_running')
  set guifont=Inconsolata\ 12
endif

" Activate line numbers everywhere
set number
" Always Syntax On
syntax on

filetype plugin indent on
