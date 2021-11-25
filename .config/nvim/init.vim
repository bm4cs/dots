" Yet another .vimrc (YAVR)
" Ben Simmonds (2007)
" See :options for further details.
"
" ▄▄▄▄· • ▌ ▄ ·. .▄▄
" ▐█ ▀█▪·██ ▐███▪▐█ ▀.
" ▐█▀▀█▄▐█ ▌▐▌▐█·▄▀▀▀█▄
" ██▄▪▐███ ██▌▐█▌▐█▄▪▐█
" ·▀▀▀▀ ▀▀  █▪▀▀▀ ▀▀▀▀


" load plugins with vimplug
call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lua/plenary.nvim' "for telescope
Plug 'nvim-telescope/telescope.nvim' "fuzzy finder
Plug 'ntpeters/vim-better-whitespace' "trailing whitespace
Plug 'easymotion/vim-easymotion' "precise motioning
Plug 'vim-airline/vim-airline' "status line
Plug 'mhinz/vim-signify' "git gutter
Plug 'tpope/vim-fugitive' "git integration
Plug 'jiangmiao/auto-pairs' "auto clode brackets
Plug 'tpope/vim-surround' "wrap text
Plug 'tpope/vim-commentary' "smart commenter
Plug 'mzlogin/vim-markdown-toc' "contents generator
Plug 'junegunn/vim-easy-align' "code neatener
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } "golang
Plug 'morhetz/gruvbox' "colorscheme
Plug 'ryanoasis/vim-devicons' "file type icons
Plug 'mcchrish/nnn.vim' "file explorer
Plug 'ap/vim-css-color' "colorise hashcodes
Plug 'prettier/vim-prettier', { 'do': 'yarn install' } "code formatter
Plug 'neovim/nvim-lspconfig' "lsp client
Plug 'hrsh7th/cmp-nvim-lsp' "lsp autocomplete
Plug 'hrsh7th/cmp-buffer' "lsp autocomplete
Plug 'hrsh7th/cmp-path' "lsp autocomplete
Plug 'hrsh7th/cmp-cmdline' "lsp autocomplete
Plug 'hrsh7th/nvim-cmp' "lsp autocomplete
Plug 'hrsh7th/cmp-vsnip' "vsnip
Plug 'hrsh7th/vim-vsnip' "vsnip
call plug#end()




""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
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
" Text, tab and indents
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab "expand <Tab> to spaces in Insert mode
set tabstop=4 "number of spaces a <Tab> in the text stands for
set softtabstop=4 "number of spaces to insert for a <Tab>
set shiftwidth=4 "number of spaces used for each step of (auto)indent
set autoindent "automatically set the indent of a new line
set smartindent "do clever autoindenting
set wrap "wrap long lines



""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undos
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile "don't use a swap file for this buffer
set nobackup "don't write a backup file before overwriting a file
set nowb "don't write a backup file before overwriting a file



""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set background=dark "editor theme

"set termguicolors "enable true color
syntax enable "syntax highlighting
colorscheme gruvbox "default color scheme
set t_Co=256 "the number of colors the terminal supports
let $TERM="st-256color"
"set term=st-256color "what terminal type to use
au BufNewFile,BufRead *.adoc set filetype=asciidoc



""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keyboard mappings
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
nmap <leader>d i<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>
imap <leader>d <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>




""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ▄▄▄·▄▄▌  ▄• ▄▌ ▄▄ • ▪   ▐ ▄ .▄▄ ·
" ▐█ ▄███•  █▪██▌▐█ ▀ ▪██ •█▌▐█▐█ ▀.
"  ██▀·██▪  █▌▐█▌▄█ ▀█▄▐█·▐█▐▐▌▄▀▀▀█▄
" ▐█▪·•▐█▌▐▌▐█▄█▌▐█▄▪▐█▐█▌██▐█▌▐█▄▪▐█
" .▀   .▀▀▀  ▀▀▀ ·▀▀▀▀ ▀▀▀▀▀ █▪ ▀▀▀▀
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keys vim-easy-align
""""""""""""""""""""""""""""""""""""""""""""""""""""""
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin telescope
""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""

try

let g:airline_extensions = ['branch', 'hunks', 'coc']
let g:airline_section_z = airline#section#create(['linenr'])
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let g:NERDTreeStatusline = ''
let g:airline_exclude_preview = 1
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1
let g:airline_theme='gruvbox'

let g:airline#extensions#hunks#enabled=0

catch
  echo 'Airline not installed. It should work after running :PlugInstall'
endtry



""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin vim-go
""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:go_def_mode='gopls'
let g:go_def_mapping_enabled = 0 "let lsp/coc take care of this

" fast quickfix navigation
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin nnn.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin lspconfig
""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua << EOF
require'lspconfig'.gopls.setup{}
EOF



""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin nvim-cmp (autocompletion)
""""""""""""""""""""""""""""""""""""""""""""""""""""""

set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['gopls'].setup {
    capabilities = capabilities
  }
EOF
