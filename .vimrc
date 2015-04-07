" execute patogen
execute pathogen#infect()
" Make vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Make tabs as wide as two spaces
set tabstop=2
set smartindent
set shiftwidth=2
set expandtab

" Enable line numbers
set number
" Enable syntax highlighting
syntax on
set background=dark
colorscheme solarized
" Highlight current line
set cursorline

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
"if exists("&relativenumber")
  " Use relative line numbers
"  set relativenumber
"  au BufReadPost * set relativenumber
"endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Show tab labels 0=never 1=some 2=always
set showtabline=2
" file explorer like nerdtree
let g:netrw_liststyle=3

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" Stolen from vim-sensible
" https://github.com/tpope/vim-sensible
" Copy indent from current line for next line
set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
" Read a file again if it has been changed outside Vim
set autoread
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif


" NERDTree settings
" Open NT when when Vim starts up
autocmd vimenter * NERDTree
" open NERDTree when vim is open with no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
" Close Vim if NERDTree is the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Stolen form thoughtbot, split pane sweetness
" http://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
" Quick split pane navigation
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>
" Better split opening
set splitbelow
set splitright
" Tab completion
" http://robots.thoughtbot.com/vim-you-complete-me
imap <Tab> <C-P>

" set terminal color to 256
set t_Co=256

" Powerline stuff from adam
" enable/disable automatic population of the `g:airline_symbols` dictionary with powerline symbols. 
let g:airline_powerline_fonts=1

if has('gui_running')
  set guifont=Liberation\ Mono\ for\ Powerline:h12,Liberation_Mono_for_Powerline:h12,Ubuntu\ Mono:h26,Consolas:h12,Courier:h12
endif

" enable/disable bufferline integration >
let g:airline#extensions#bufferline#enabled = 1