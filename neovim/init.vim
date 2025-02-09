set autoindent
set clipboard+=unnamedplus
set encoding=utf-8
set expandtab
set fileformat=unix
set mouse+=a
set nobackup
set noswapfile
set nowritebackup
set number
set scrolloff=7
set shiftwidth=4
set signcolumn=yes
set smartindent
set softtabstop=4
set tabstop=4
set termguicolors
set updatetime=300

filetype indent on
syntax on

inoremap jk <esc>
inoremap <F4> <ESC>gg=G

call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'Pocco81/AutoSave.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python -m chadtree deps'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sainnhe/gruvbox-material'
Plug 'rebelot/kanagawa.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'xiyaowong/nvim-transparent'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

colorscheme kanagawa

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
map <F2> :CHADopen<CR>
map <F3> :Telescope<CR>