call plug#begin()

" help
" :options to search through all options
" :h number -> look up specific command
"

" Looks and gui stuff

Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


" Functionalities

Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim'
Plug 'nvim-lua/plenary.nvim' " needed for telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'honza/vim-snippets'

" completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

call plug#end()

" General configuration

set termguicolors
colorscheme gruvbox
highlight Normal guibg=none
set number
set relativenumber
set background=dark
set noerrorbells
set nohlsearch
set exrc
set mouse=a
set tabstop=4 softtabstop=4 shiftwidth=4 autoindent
set expandtab smarttab 
set title " tab title as file name
set emoji " enable emojis
set hidden " Keeps buffer open in the background
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set updatetime=300
set lazyredraw


" Shortcuts
" mode left-hand-side right-hand-side
" normal mode, no recursive, nnore

let mapleader = " "

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<CR>
noremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<CR>

" Autmatically close brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

