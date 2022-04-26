" Add numbers to each line on the left-hand side.
:set number											
:set autoindent
:set noswapfile

" Tabs
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=4

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree' " C-b to toggle 
Plug 'tpope/vim-surround' "ysw for surrondings ([{
Plug 'tpope/vim-commentary' " gcc & gc to comment
Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'sansyrox/vim-python-virtualenv'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'iamcco/markdown-preview.vim'

call plug#end()

" Vim DevIcons config
set encoding=UTF-8

" colorscheme onedark
set cursorline
colorscheme onehalfdark
let g:lightline = { 'colorscheme': 'onehalfdark' }
set t_Co=256

" True colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" NERDTree keys

" noremap <C-f> :NERDTreeFocus<CR>
" noremap <C-n> :NERDTree<CR>
noremap <C-b> :NERDTreeToggle<CR>

" NERDTree config
let NERDTreeShowHidden = 1

" Auto Completion
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap <silent><expr> <c-space> coc#refresh()

" Fzf
noremap <C-p> :Files<CR>

" Coc
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint'
  \ ]

" Eslint Coc
noremap <C-s> :CocCommand eslint.executeAutofix

" Python virtualenv
let g:python3_host_prog='/home/suetham/.asdf/shims/python3'
