" Vim options "
"""""""""""""""

set nocompatible
set encoding=utf-8
filetype off
highlight BadWhitespace ctermbg=red

" Interface Setup "
"""""""""""""""""""

" Visual configuration
set number
set ruler

" Indentions
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent

" Splitting
set splitbelow
set splitright

" Status bar
set laststatus=2

" File Specific "
"""""""""""""""""

" Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ match BadWhitespace /\s\+$/

" Web Dev
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" C
au BufRead,BufNewFile *.c,*.h
    \ set tabstop=2
    \ match BadWhitespace /\s\+$/

" Navigation "
""""""""""""""

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Programming options "
"""""""""""""""""""""""

" Enable syntax highlighting
let python_highlight_all=1
syntax enable

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


" Vundle Settings "
"""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle,
Plugin 'gmarik/Vundle.vim'

" add all your plugins here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-sytastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'plytophogy/vim-virtualenv'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Nerdtree
let NERDTreeIgnore=['\.pyc$'. '\~$'] 
