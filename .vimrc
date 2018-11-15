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


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jnurmine/Zenburn'
Plug 'ajmwagar/vim-deus'
Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_select_all_word_key = '<c-m>'
let g:multi_cursor_select_all_key      = 'g<c-m>'
Plug 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ] 
au VimEnter * RainbowParenthesesToggle
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'tell-k/vim-autopep8'
call plug#end()

colors deus
