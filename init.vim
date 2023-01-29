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

inoremap jk <esc>

call plug#begin()
" color schemes
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'tc50cal/vim-terminal'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Pocco81/AutoSave.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'karloskar/poetry-nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'romgrk/barbar.nvim'
Plug 'xiyaowong/nvim-transparent'
Plug 'justinmk/vim-sneak'
Plug 'kassio/neoterm'
Plug 'Yggdroot/indentLine'
cal plug#end()

set termguicolors     " enable true colors support
colorscheme gruvbox

let g:sneak#label = 1
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

lua << EOF
  require("poetry-nvim").setup()
  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      adaptive_size = true,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })
EOF


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
