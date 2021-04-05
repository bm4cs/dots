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
Plug 'ntpeters/vim-better-whitespace' "trailing whitespace
Plug 'easymotion/vim-easymotion' "precise motioning
Plug 'vim-airline/vim-airline' "status line
Plug 'mhinz/vim-signify' "git gutter
Plug 'tpope/vim-fugitive' "git integration
"Plug 'jiangmiao/auto-pairs' "auto clode brackets
Plug 'tpope/vim-surround' "wrap text
Plug 'tpope/vim-commentary' "smart commenter
Plug 'shougo/denite.nvim' "file jumper
Plug 'mzlogin/vim-markdown-toc' "contents generator
Plug 'junegunn/vim-easy-align' "code neatener
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}} "autocomplete
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } "golang
Plug 'morhetz/gruvbox' "colorscheme
Plug 'ryanoasis/vim-devicons' "file type icons
Plug 'mcchrish/nnn.vim' "file explorer
Plug 'ap/vim-css-color' "colorise hashcodes
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
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
" Plugin Denite
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   ;         - Browser currently open buffers
"   <leader>f - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap ; :Denite buffer<CR>
nmap <leader>f :Denite -start-filter file/rec<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

try
    " Interactive grep search
    call denite#custom#var('grep', 'min_interactive_pattern', 2)
    call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
    call denite#custom#source('grep', 'args', ['', '', '!'])

    " Ripgrep command on grep source
	call denite#custom#var('grep', {
		\ 'command': ['rg'],
		\ 'default_opts': ['-i', '--vimgrep', '--no-heading'],
		\ 'recursive_opts': [],
		\ 'pattern_opt': ['--regexp'],
		\ 'separator': ['--'],
		\ 'final_opts': [],
		\ })

	call denite#custom#var('file/rec', 'command',
	    \ ['rg', '--hidden', '--files', '--glob', '!.git', '--color', 'never'])

    call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
    call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/*', '*.pyc', 'node_modules/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/', '*.png'])

    " Remove date from buffer list
    call denite#custom#var('buffer', 'date_format', '')
    
    let s:denite_options = {'default' : {
    \ 'auto_resize': 1,
    \ 'prompt': 'λ:',
    \ 'direction': 'rightbelow',
    \ 'winminheight': '10',
    \ 'highlight_mode_insert': 'Visual',
    \ 'highlight_mode_normal': 'Visual',
    \ 'prompt_highlight': 'Function',
    \ 'highlight_matched_char': 'Function',
    \ 'highlight_matched_range': 'Normal'
    \ }}
    
    " Loop through denite options and enable them
    function! s:profile(opts) abort
      for l:fname in keys(a:opts)
        for l:dopt in keys(a:opts[l:fname])
          call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
        endfor
      endfor
    endfunction
    
    call s:profile(s:denite_options)
catch
    echo 'Denite not installed. It should work after running :PlugInstall'
endtry



""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nnn.vim has replaced NERDTree for me

" " Toggle NERDTree on/off
" nmap <leader>n :NERDTreeToggle<CR>
" " Opens current file location in NERDTree
" nmap <leader>f :NERDTreeFind<CR>
" " PageDown
" noremap <Space> <PageDown>
" " PageUp
" noremap - <PageUp>

"let g:NERDTreeShowHidden = 1 "hidden files
"let g:NERDTreeMinimalUI = 1 " remove bookmarks and help text
""let g:NERDTreeDirArrowExpandable = '⬏' "custom icons for expandable
""let g:NERDTreeDirArrowCollapsible = '⬎' "custom icons for expandable
"let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$'] "ignore list



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

