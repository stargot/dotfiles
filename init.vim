set mouse=a
set encoding=utf-8
set number
set noswapfile
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes
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

set clipboard+=unnamedplus

filetype indent on
syntax on

inoremap jk <esc>

call plug#begin()
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Pocco81/AutoSave.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'karloskar/poetry-nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'xiyaowong/nvim-transparent'
Plug 'numToStr/FTerm.nvim'
call plug#end()

set termguicolors     " enable true colors support
colorscheme gruvbox-material

:lua require("poetry-nvim").setup()

vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L

map <F2> :Neotree<CR>
map <F3> :Telescope find_files<CR>
map <F4> :lua require('FTerm').toggle()<CR>
