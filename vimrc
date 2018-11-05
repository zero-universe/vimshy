" enable pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable
set background=dark
colorscheme solarized

set nocompatible                " Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start  " more powerful backspacing
set history=150                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time
set nu

" better copy/paste behavior
set paste

" Better command-line completion
set wildmenu


" load python modules
"let g:pydiction_location = '/home/oleg/.vim/bundle/pydiction/pydiction.py'
"let python_highlight_all = 1

"set mouse=nvi

" recognize files
filetype on
filetype indent on
filetype plugin on

" Ignore case when searching
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" set parentheses recognition
set sm
set smd

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" spelling 
set spell
set spelllang=de_de

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
""""""""""""""""""""""""""""""

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" encryption
set cm=blowfish2
