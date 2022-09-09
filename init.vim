call plug#begin()

" help
" :options to search through all options
" :h number -> look up specific command

" Looks and gui stuff
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ryanoasis/vim-devicons'

" Diagnostics tool
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

" Linting stuff
Plug 'dense-analysis/ale'

" Syntax highlighting for various languages
Plug 'sheerun/vim-polyglot'

" Functionalities
Plug 'kdheepak/lazygit.nvim'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim' " needed for telescope
Plug 'ThePrimeagen/harpoon'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter'

" Formatting
Plug 'sbdchd/neoformat'

Plug 'numToStr/Comment.nvim'

" completion
Plug 'OmniSharp/omnisharp-vim'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'neovim/nvim-lspconfig' " Language server protocol support
Plug 'hrsh7th/cmp-nvim-lsp' " Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'simrat39/symbols-outline.nvim'

call plug#end()

" General configuration

colorscheme gruvbox
set path+=** " Adds ** to seach path. which means seach any dirs and subdirs
set encoding=UTF-8
set autoindent
set hidden
set background=dark
set clipboard=unnamed
set colorcolumn=80
set completeopt=menuone,noinsert,noselect
set emoji " enable emojis
set exrc
set hidden " Keeps buffer open in the background
set incsearch
set lazyredraw
set mouse=a
set nobackup
set noerrorbells
set nohlsearch
set noshowmode
set noswapfile
set number
set relativenumber
set scrolloff=8
set shiftwidth=4
set signcolumn=yes
set smartindent
set smarttab
set smarttab
set softtabstop=4
set tabstop=4
set termguicolors
set title " tab title as file name
set undodir=~/.vim/undodir
set undofile
set updatetime=300

" Shortcuts
" mode left-hand-side right-hand-side
" normal mode, no recursive, nnore

let mapleader = " "

" Be ware of using something like n as a shorcut while also using
" nf as a shorcut. This will case the n shortcut to be slow.
" Because Vim will wait a bit before executing the command.

" Map Ctrl + c to escape
nnoremap <C-c> <Esc>

" LazyGit
nnoremap <leader>lg :LazyGit<CR>

" Shorcut for inserting a line above or below current line
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" Format code with Neoformatter
nnoremap <leader>fo :Neoformat<CR>

nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bc :enew<CR>

" Delete buffer
nnoremap <leader>bd :bd!<CR>
nnoremap <leader>bb :buffers<CR>

" symbols-outline stuff
nnoremap <leader>so :SymbolsOutline<CR>

" NERDTree
nnoremap <leader>tt :NERDTreeToggle<CR>
nnoremap <leader>tf :NERDTreeFocus<CR>

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<CR>

" Trouble Diagnostics
nnoremap <leader>xx :TroubleToggle<CR>
nnoremap <leader>xq :TroubleToggle quickfix<CR>

" Harpoon
nnoremap <leader>ha <cmd>lua require('harpoon.mark').add_file()<CR>
nnoremap <leader>ho <cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>
nnoremap <leader>n <cmd>lua require('harpoon.ui').nav_next()<CR>
nnoremap <leader>p <cmd>lua require('harpoon.ui').nav_prev()<CR>
nnoremap <leader>1 <cmd>lua require('harpoon.ui').nav_file(1)<CR>
nnoremap <leader>2 <cmd>lua require('harpoon.ui').nav_file(2)<CR>
nnoremap <leader>3 <cmd>lua require('harpoon.ui').nav_file(3)<CR>
nnoremap <leader>4 <cmd>lua require('harpoon.ui').nav_file(4)<CR>
nnoremap <leader>5 <cmd>lua require('harpoon.ui').nav_file(5)<CR>
nnoremap <leader>tu <cmd>lua require('harpoon.tmux').gotoTerminal(1)<CR>
nnoremap <leader>hc1 <cmd>lua require('harpoon.tmux').sendCommand(1, "ls")<CR>
nnoremap <leader>hco <cmd> lua require('harpoon.cmd-ui').toggle_quick_menu()<CR>

" LSP config
" Use CTRL + o and CTRL + i to go back and forth from defintion.
" When opening a new definition file, a new buffer is created. So you can swap by chaning buffer

nnoremap <leader>lh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>ld <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>lt <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>lD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>lc <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>lc <cmd>lua vim.lsp.buf.range_code_action()<CR>
nnoremap <leader>li <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>lr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>ls <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>lm <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>lf <cmd>lua vim.lsp.buf.open_float()<CR>
nnoremap <leader>l[ <cmd>lua vim.lsp.buf.goto_next()<CR>
nnoremap <leader>l] <cmd>lua vim.lsp.buf.goto_prev()<CR>

" Access start page in VIM
nnoremap <leader>s <cmd>:Startify<CR>

" Moving code works in visual, insert and normal mode
" https://vim.fandom.com/wiki/Moving_lines_up_or_down#:~:text=Mappings%20to%20move%20lines,-The%20following%20mappings&text=In%20normal%20mode%20or%20in,move%20the%20current%20line%20up.
nnoremap <C-k> :m .-2<CR>
nnoremap <C-j> :m .+1<CR>
inoremap <C-k> <Esc>:m .+1<CR>==gi
inoremap <C-j> <Esc>:m .-2<CR>==gi
vnoremap <C-k> :m '>+1<CR>gv=gv
vnoremap <C-j> :m '<-2<CR>gv=gv

" Show hidden files
let NERDTreeShowHidden=1

" OmniSharp
" let g:OmniSharp_selector_ui = 'fzf'
" let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_server_stdio = 1

" Make sure startify does not change the directory
let g:startify_change_to_dir = 0
" Startify configuration
let g:startify_bookmarks = [
            \ { 'a': '~/.dotfiles/init.vim'},
            \ { 's': '~/todo.md'},
            \ { 'd': '~/workspace/private/my-workflow.md'},
            \ { 'f': '~/.tmux.conf'}
            \ ]

" Tweaks for browsing with Netrw
let g:netrw_banner=0 " Disable annoying banner
let g:netrw_liststyle=3 " display tree view
let g:netrw_keepdir=0 " Keep current dir

" Ale config
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint']
\}

" Formatting
" https://prettier.io/docs/en/vim.html
" use prettier file in current workspace
" Have to be in the correct working directory in order for formatting to work.
let g:neoformat_try_node_exe = 1

" Something is wrong with the auto cmd below
" autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx Neoformat

" Format on other events as well
" autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat

" Navigate cmp by using CTRL + n and CTRL + p. Press enter to select

lua << EOF

local cmp = require'cmp'
local luasnip = require'luasnip'

local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
  on_attach = function(client, bufnr)
    vim.api.nvim_exec_autocmds('User', {pattern = 'LspAttached'})
  end
}

local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
  'force',
  lspconfig.util.default_config,
  lsp_defaults
)

require('symbols-outline').setup{}
require'trouble'.setup{}
require'lspconfig'.tsserver.setup{}

local cmp = require('cmp')

local select_opts = {behavior = cmp.SelectBehavior.Select}


cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp', max_item_count = 5},
    {name = 'buffer', max_item_count = 5},
    {name = 'luasnip'}
  },
    snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    documentation = cmp.config.window.bordered()
  },
  formatting = {
    fields = {'menu', 'abbr', 'kind'},
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        buffer = 'Ω',
		luasnip = '>',
        path = '\\',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
  mapping = {
    ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
    ['<Down>'] = cmp.mapping.select_next_item(select_opts),

    ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
    ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),

	['<C-l>'] = cmp.mapping.complete(),

    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({select = true}),

  },
})

require'Comment'.setup()

EOF
"
" ['<Tab>'] = cmp.mapping(function(fallback)
"   local col = vim.fn.col('.') - 1
"   if cmp.visible() then
"     cmp.select_next_item(select_opts)
"   elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
"     fallback()
"   else
"     cmp.complete()
"   end
" end, {'i', 's'}),
"
" ['<S-Tab>'] = cmp.mapping(function(fallback)
"   if cmp.visible() then
"     cmp.select_prev_item(select_opts)
"   else
"     fallback()
"   end
" end, {'i', 's'}),
