"enable syntax highlighting
syntax on

" Optimise for fast terminal connections
set ttyfast

" Do not add empty lines at the end of files
set binary
set noeol

" Respect modeline in files
set modeline
set modelines=4

" Enable autoindent
set autoindent

" Make tab stops as wide as 4 spaces
set tabstop=4 shiftwidth=4 expandtab

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
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us

" Word completion
set complete+=kspell

" Abbreviations
abbr <expr> ds strftime('%Y-%m-%d')
abbr kr Kind regards,<cr>Chetan

call plug#begin()
" Quoting / Parenthesizing made simple
Plug 'tpope/vim-surround'

" Auto pairing
Plug 'jiangmiao/auto-pairs'
call plug#end()
