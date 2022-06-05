" Yet another .vimrc (YAVR)
" Ben Simmonds (2007)
" See :options for further details.
"
" ▄▄▄▄· • ▌ ▄ ·. .▄▄
" ▐█ ▀█▪·██ ▐███▪▐█ ▀.
" ▐█▀▀█▄▐█ ▌▐▌▐█·▄▀▀▀█▄
" ██▄▪▐███ ██▌▐█▌▐█▄▪▐█
" ·▀▀▀▀ ▀▀  █▪▀▀▀ ▀▀▀▀


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" general enhancements
Plug 'ntpeters/vim-better-whitespace' "trailing whitespace
Plug 'justinmk/vim-sneak' "precise motioning
Plug 'editorconfig/editorconfig-vim' "cross editor coding styles
Plug 'tpope/vim-surround' "wrap text
Plug 'tpope/vim-commentary' "smart commenter
Plug 'mcchrish/nnn.vim' "file explorer
Plug 'sbdchd/neoformat' "code formatter
"Plug 'jiangmiao/auto-pairs' "auto clode brackets
"Plug 'nvim-lua/popup.nvim' "popup api

" gui enhancements
Plug 'morhetz/gruvbox' "colorscheme
Plug 'machakann/vim-highlightedyank' "pop yanks
Plug 'andymass/vim-matchup' "extends % lang aware
Plug 'ap/vim-css-color' "colorise hashcodes
Plug 'ryanoasis/vim-devicons' "file type icons

" fuzzy finder
Plug 'nvim-telescope/telescope.nvim' "fuzzy finder
Plug 'nvim-lua/plenary.nvim' "for telescope

" git
Plug 'airblade/vim-rooter' "changes working dir to project root
Plug 'mhinz/vim-signify' "git gutter
Plug 'tpope/vim-fugitive' "git integration

" syntactic language supports
Plug 'rust-lang/rust.vim'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" semantic language support (sharksforarms/neovim-rust)
Plug 'neovim/nvim-lspconfig' "common lsp configs
Plug 'hrsh7th/nvim-cmp' "autocompletion framework
Plug 'hrsh7th/cmp-nvim-lsp' "cmp lsp completion
Plug 'hrsh7th/cmp-buffer' "cmp editor completion
Plug 'hrsh7th/cmp-path' "cmp path completion
Plug 'hrsh7th/cmp-cmdline' "cmp cmdline completion
Plug 'hrsh7th/cmp-vsnip' "cmp snippet completion
Plug 'hrsh7th/vim-vsnip' "snippet engine
Plug 'simrat39/rust-tools.nvim' "extra functionality over rust analyzer

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible "drop some legacy compatibility in favour of new things
filetype on "file specific goodness
filetype plugin on
filetype indent on
set autoread "refresh file contents when modified externally
set autochdir "use the current file as working dir
set autowrite "auto write file if call make
set backspace=indent,eol,start "specifies what <BS> can do in Insert mode
set colorcolumn=80 "visual ruler
set cursorline "highlight the screen line of the cursor
set encoding=utf-8 "character encoding to be used in Vim
set fileencoding=utf-8 "character encoding to be used by current file
set gdefault "use the 'g' (global) flag for :substitute by default
set nohlsearch "highlight search results
set hidden "dont unload a buffer when no longer shown in a window
set ignorecase "ignore case when searching
set incsearch "show match for partly typed search command
set list "show non-vis characters
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:⋅ "representation of non-vis chars
let g:mapleader=',' "remap leader key to ,
set number "show line numbers
"set paste "disabled because resets expandtab (spaces not tabs)
set relativenumber "make line numbering relative to the current line
set shell=/bin/bash "default shell
set showmatch "when inserting a bracket, briefly jump to its match
set smartcase "override 'ignorecase' when pattern has upper case characters
set laststatus=2 "2 = always show a status line for vim-airline
set novisualbell "don't use a visual bell instead of beeping
set winheight=5 "minimal number of lines used for the current window
set winminheight=5 "minimal number of lines used for any window
set winwidth=84 "minimal number of columns used for the current window
set wildmode=list:longest "activate <TAB> auto-completion for file paths
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.git,.svn,.hg
set wildignore+=*~,*.swp,*.tmp
set wildignore+=**/node_modules/*


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEXT, TABS AND INDENTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab "expand <Tab> to spaces in Insert mode
set tabstop=4 "number of spaces a <Tab> in the text stands for
set softtabstop=4 "number of spaces to insert for a <Tab>
set shiftwidth=4 "number of spaces used for each step of (auto)indent
set autoindent "automatically set the indent of a new line
set smartindent "do clever autoindenting
set wrap "wrap long lines


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILES, BACKUPS AND UNDOS
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile "don't use a swap file for this buffer
set nobackup "don't write a backup file before overwriting a file
set nowb "don't write a backup file before overwriting a file


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORS AND FONTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set background=dark "editor theme
"set termguicolors "enable true color
syntax enable "syntax highlighting
colorscheme gruvbox "default color scheme
set t_Co=256 "the number of colors the terminal supports
let $TERM="st-256color"
"set term=st-256color "what terminal type to use


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EXPLICIT FILE TYPING
""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.adoc set filetype=asciidoc


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEYBOARD MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" never arrows in vim,  break the addiction today!
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" elevated save
cmap w!! w !sudo tee %

" insert timestamp
nmap <leader>d i<C-R>=strftime("%Y-%m-%d %H:%M:%S+11:00")<CR><Esc>
imap <leader>d <C-R>=strftime("%Y-%m-%d %H:%M:%S+11:00")<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ▄▄▄·▄▄▌  ▄• ▄▌ ▄▄ • ▪   ▐ ▄ .▄▄ ·
" ▐█ ▄███•  █▪██▌▐█ ▀ ▪██ •█▌▐█▐█ ▀.
"  ██▀·██▪  █▌▐█▌▄█ ▀█▄▐█·▐█▐▐▌▄▀▀▀█▄
" ▐█▪·•▐█▌▐▌▐█▄█▌▐█▄▪▐█▐█▌██▐█▌▐█▄▪▐█
" .▀   .▀▀▀  ▀▀▀ ·▀▀▀▀ ▀▀▀▀▀ █▪ ▀▀▀▀
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TELESCOPE
""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NNN.VIM
""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LSPCONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.rls.setup{}
-- require'lspconfig'.rls.setup{
--   settings = {
--     rust = {
--       unstable_features = true,
--       build_on_save = false,
--       all_features = true,
--     },
--   },
-- }
EOF


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUST-TOOLS
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source: sharksforarms/neovim-rust
" Configure LSP through rust-tools.nvim plugin.
" rust-tools will configure and enable certain LSP features for us.
" See https://github.com/simrat39/rust-tools.nvim#configuration

lua <<EOF

-- nvim_lsp object
local nvim_lsp = require'lspconfig'

local opts = {
    tools = {
        autoSetHints = true,
        hover_with_actions = true,
        runnables = {
            use_telescope = true
        },
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(opts)
EOF


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NVIM-LSP
""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>

" quick-fix
nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NVIM-CMP (AUTOCOMPLETION)
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source: sharksforarms/neovim-rust
" Set completeopt to have a better completion experience :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

" Setup Completion
" See https://github.com/hrsh7th/nvim-cmp#basic-configuration
lua <<EOF
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },

  -- Installed sources
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
})
EOF

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hover
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neoformat
""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']
nnoremap <leader>p <cmd>Neoformat<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-sneak
""""""""""""""""""""""""""""""""""""""""""""""""""""""
map f <Plug>Sneak_s
map F <Plug>Sneak_S
