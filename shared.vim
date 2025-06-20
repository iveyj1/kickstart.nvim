if !has("nvim")
  " Load plugins only in Vim
  call plug#begin('~/.vim/plugged')
    Plug 'vuciv/golf'
    Plug 'tpope/vim-sensible'
    "Plug 'tpope/vim-commentary'
    "Plug 'preservim/nerdtree'
    nnoremap <F6> :NERDTreeToggle<CR>
  call plug#end()

  set mouse=a
  set nocompatible
  set backspace=indent,eol,start
  syntax on
  set encoding=utf-8
  set showcmd
  set showmode
  set hidden
  set confirm
  set splitbelow
  set splitright
  set incsearch
  set hlsearch
  set ignorecase
  set smartcase
  set autoindent
  set smartindent
  set termguicolors
  set clipboard=unnamedplus
  set undofile
endif

" These settings are not defaults, so apply always
set number relativenumber
let mapleader=" "
set nrformats-=octal
set laststatus=2
set path+=**
set scrolloff=5
set wildmenu
set pumheight=10
set complete=.,w,b,u,t,i
set complete-=i
set complete+=kspell
set completeopt=menuone,longest,preview
set ttimeout
set ttimeoutlen=250
set timeoutlen=250
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set undodir=~/.vim/undo
colorscheme lunaperche
set background=dark

" Key mappings
nnoremap <c-j> :bn<CR>
nnoremap oo o<Esc>k
nnoremap OO O<Esc>j
vmap K :move '<-2<CR>gv=gv
vmap J :move '>+1<CR>gv=gv
