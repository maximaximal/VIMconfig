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
  set guifont=Inconsolata\ for\ Powerline\ 12
endif

" Activate line numbers everywhere
set number

filetype plugin indent on
