set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins in use 
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tomtom/tcomment_vim'
Bundle 'andreamichi/wacc-vim'
Bundle 'Rip-Rip/clang_complete'
Bundle 'vim-scripts/a.vim'
Bundle 'tomasr/molokai'
Bundle 'kchmck/vim-coffee-script'
Bundle 'dandorman/vim-colors'

syntax on
filetype plugin indent on 

set background=dark
colorscheme Tomorrow-Night

" Indentation and Formatting
set autoindent
set smartindent
set smarttab
set expandtab   " Insert spaces for tab
set shiftround
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set scrolloff=5

" Indentation for different formats
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType java setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4

" Allow backspace over everything in insert mode
set backspace=indent,eol,start

" Set the number of lines and ruler
set number
set ruler
set showcmd
set nostartofline

" No backup and swap files
set nobackup
set noswapfile

" History and undo
set history=128
set undolevels=512

" Search
set hlsearch
set incsearch 
set smartcase

" Search is not case-sensitive
set ignorecase

" Folding method
set foldmethod=indent
set foldlevel=99

" Stop the annoying beep
set visualbell

" Support the mouse 
set mouse=a

" Open NERDTree with Ctrl+f
map <C-f> :NERDTreeToggle<CR>

" Shortcut for commenting. Requires T-Comment plugin
map <leader>c <c-_><c-_>

"" Open NERDTree if vim is launched with no arguments.
autocmd vimenter * if !argc() | NERDTree | endif

" Close automatically NERDTree if it's the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
    endif

colorscheme molokai
