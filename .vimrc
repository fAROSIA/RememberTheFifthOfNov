set encoding=utf-8
set hlsearch
set nu
set ruler
set showmode
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=a
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
syntax enable
set nocompatible
let python_highlight_all=1

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jnurmine/Zenburn'
Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_select_all_word_key = '<c-m>'
let g:multi_cursor_select_all_key      = 'g<c-m>'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'tell-k/vim-autopep8'
call plug#end()
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match Error /\s\+$/
au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4|
\ set shiftwidth=4|
\ set textwidth=79|
\ set expandtab|
\ set autoindent|
\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
\ set tabstop=2
\ set softtabstop=2
\ set shiftwidth=2

colors zenburn
