set mouse=a
set encoding=utf-8
set number
set noswapfile
set scrolloff=7
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

filetype indent on
inoremap jk <esc>

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'tc50cal/vim-terminal'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim'
Plug 'morhetz/gruvbox'
Plug 'Pocco81/AutoSave.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
cal plug#end()

colorscheme gruvbox
