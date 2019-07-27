"""""""""""""""""""""""""""""""""""""""""""""""""
" Austin Sparks
"""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
" Vim Config
"""""""""""""""""""""""""""""
set nocompatible
syntax on
set nowrap
set encoding=utf8

"Show linenums
set number
set ruler

"Tab settings
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

"Always display the status line
set laststatus=2

"Enable elite mode
let g:elite_mode=1

"Highlight cursor line
set cursorline

colorscheme pablo

"""""""""""""""""""""""""""""
" Vundle Config
"""""""""""""""""""""""""""""
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""""""""""""""""""
" Plugin List
"""""""""""""""""""
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'Xuyuanp/nerdtree-git-plugin'

" Vundle End
call vundle#end()

"""""""""""""""""""""""""""""
" NERDTree Config
"""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
