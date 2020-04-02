set nocompatible
filetype off

set nu
syntax enable
set background=dark
let g:solarized_termcolors=256
"colorscheme molokai

set showcmd
set mouse=a

"set vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/bling/vim-airline'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

"set NerdTree
map<F3> :NERDTreeMirror<CR>
map<F3> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter="\u00a0"

" ctags
set tags=./tags;/

" tagbar
nmap <F8> :TagbarToggle<CR>

" Indent Guides
"
" set font coding
set encoding=utf-8
