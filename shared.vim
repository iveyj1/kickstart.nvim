" only load plugins in Vim, skip them under Neovim
if !has("nvim")
  call plug#begin('~/.vim/plugged')
    Plug 'vuciv/golf'
    Plug 'tpope/vim-sensible'
    "Plug 'tpope/vim-commentary'
    "Plug 'preservim/nerdtree'
  call plug#end()
nnoremap <F6> :NERDTreeToggle<CR>
endif
" runtime! ~/vim/plugged/vim-sensible/plugin/sensible.vim 
set mouse=a
set nocompatible
set backspace=indent,eol,start
set number relativenumber
let mapleader=" "
set nrformats-=octal
set hidden " switch buffers without closing confirmation
set confirm " Exit with closing confirmation
set splitbelow splitright
set laststatus=2
syntax on
set path +=**
set showcmd
set showmode
set encoding=utf-8
set scrolloff=5
" search options
set incsearch
set hlsearch
set ignorecase
set smartcase

"open terminal inside vim
"map <leader>tt :vnew term://bash<CR>

" automatically close brackets, parethesis, double quotes, and single quotes
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {; {};<left><left>
" inoremap /* /**/<left><left>
 
set termguicolors
colorscheme lunaperche
set background=dark

" Command completions
set wildmenu
set pumheight=10
set complete=.,w,b,u,t,i
set complete-=i
set complete+=kspell
set completeopt=menuone,longest,preview

" Set timeouts to be more responsive
set ttimeout
set ttimeoutlen=250  " wait 250 ms for escape sequences
set timeoutlen=250     " wait 250 ms for mappings

" Keys
nnoremap <c-j> :bn<CR>
nnoremap oo o<Esc>k
nnoremap OO O<Esc>j

" in visual mode, K,J moves current line up,down one
"vmap <leader>r \"hy:%s/<C-r>h//g<left><left>
vmap K :move '<-2<CR>gv=gv
vmap J :move '>+1<CR>gv=gv

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" Clipboard
"use + register for y and p (same as <Ctrl-C> and <Ctrl-V> in other apps)
set clipboard=unnamedplus
set undofile
set undodir=~/.vim/undo

