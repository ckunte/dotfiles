" ckunte's .vimrc file
set shell=/usr/bin/fish
"Reload .vimrc automatically
autocmd! bufwritepost .vimrc source %

" Highlight cursor line in insert mode
autocmd InsertEnter,InsertLeave * set cul!

" Change cursor type by mode
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "SR = NORMAL mode

" Better copy and paste
set pastetoggle=<F2>
set clipboard+=unnamedplus

" Indent right with > and left with < 
vnoremap < <gv
vnoremap > >gv

"enable syntax highlighting (a default feature in nvim)
"syntax on

" enable line numbers
set number

" Optimise for fast terminal connections
set ttyfast

" Do not add empty lines at the end of files
set binary noeol

" Respect modeline in files
set modeline modelines=4

" Enable autoindent
set autoindent

" Make tab stops as wide as 4 spaces
set tabstop=4 softtabstop=4 shiftwidth=4 shiftround expandtab

" Get backspace to work
set backspace=indent,eol,start

" Highlight searches
set hlsearch

" Ignore case searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always allow status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Do not reset cursor to the start if line when moving around
set nostartofline

" Show the cursor position
set ruler
" Show current mode
set showmode

" Show filename in the window titlebar
set title

" Show the (partial) command as it is being typed
set showcmd

" Start scrolling 3 lines before the horizontal window border
set scrolloff=3

" Save a file as root (,W)
"noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Enable line wrap, and do not break word in-between
set wrap linebreak nolist

" Spelling check
setlocal spell
set spelllang=en_gb
" Correct misspelled words on the fly with Ctrl+L
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_gb

" Word completion
set complete+=kspell

" Abbreviations
abbr <expr> ds strftime('%Y-%m-%d %H:%M')
abbr addr C Kunte, my-address-here
abbr eml ckunte@gmail.com
abbr kr Kind regards,<cr>Chetan
abbr ph my-phone-here

" Python3 path for neovim to use
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')

" Sensible Vim
Plug 'tpope/vim-sensible'

" Quoting / Parenthesizing made simple
Plug 'tpope/vim-surround'

" Auto pairing
Plug 'jiangmiao/auto-pairs'

" Lightline
Plug 'itchyny/lightline.vim'

" Colour scheme
Plug 'patstockwell/vim-monokai-tasty'

" Typst plugins
Plug 'kaarmu/typst.vim'
Plug 'SirVer/ultisnips'
Plug 'ckunte/typst-snippets-vim'

call plug#end()

" Color schemes
colorscheme vim-monokai-tasty
let g:lightline = {'colorscheme': 'monokai_tasty',}
" Ultisnips instructions
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'