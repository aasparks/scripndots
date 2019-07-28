"""""""""""""""""""""""""""""""""""""""""""""""""
" Austin Sparks
"""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
" Vim Config
"""""""""""""""""""""""""""""
set nocompatible
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

colorscheme torte

"""""""""""""""""""""""""""""
" Vundle Config
"""""""""""""""""""""""""""""
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""""""""""""""""""
" Plugin List
"""""""""""""""""""

" Vundle
Plugin 'gmarik/Vundle.vim'

" Nerdtree (file explorer)
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'Xuyuanp/nerdtree-git-plugin'

" Syntastic
Plugin 'vim-syntastic/syntastic.git'

" Racket syntax
Plugin 'wlangstroth/vim-racket'
Plugin 'bhurlow/vim-parinfer'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'jpalardy/vim-slime'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'MicahElliott/vrod'
Plugin 'jiangmiao/auto-pairs'

" Markdown Support
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'

" Vundle End
call vundle#end()

"""""""""""""""""""""""""""""
" NERDTree Config
"""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"""""""""""""""""""""""""""""
" Syntastic Config
"""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Checkers
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_html_checkers = ['tslint']
let g:syntastic_scss_checkers = ['tslint']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_racket_checkers = ['']

"""""""""""""""""""""""""""""
" Racket Support Configs
"""""""""""""""""""""""""""""
let g:slime_target="tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_dont_ask_default = 1

augroup racket
    au!
    au BufReadPost *.rkt,*.rktl set filetype=racket
    au filetype racket set lisp
augroup end

"""""""""""""""""""""""""""""
" Markdown Support
"""""""""""""""""""""""""""""
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup end

" Markdown improved code block 
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'js', 'ts', 'css', 'scss']
let g:markdown_sytax_conceal = 0
let g:markdown_minlines = 100

let g:pencil#wrapModeDefault = 'soft' 
let g:languagetool_jar = '/opt/languagetool/languagetool-commandline.jar'


augroup pencil
    autocmd FileType markdown,mkd call pencil#init()
    autocmd FileType text call pencil#init()
augroup end

syntax on
set lisp

