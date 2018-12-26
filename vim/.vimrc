set nocompatible "use vim over vi

"pathogen settings
execute pathogen#infect()
filetype plugin indent on
set noshowmode

"air-line settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'

"colorscheme dante advantage darker-robin elflord koehler miko molokai
colorscheme inkpot
set number  "line numbers are good
set relativenumber "line numbers away
set ruler "show file stats
set cursorline
set visualbell
set history=1000  "store lots of :cmdline history
set t_Co=256


" netrw settings (nerdtree that ships with vim)
let g:netrw_liststyle = 3   "viewtype can be cycled with i
let g:netrw_banner = 0    "removes info banner, cycle with I
let g:netrw_browse_split = 3 "opens files in new tab from tree
let g:netrw_winsize = 25  "set tree width to 25%

"text rendering options
set display+=lastline
set encoding=utf-8
set linebreak "avoid wrapping a line in the middle of a word
set scrolloff=1 "number of lines to keep above/below cursor
set sidescrolloff=5 "columns to keep /left/right of cursor
syntax enable "turn on syntax highlighting

"set command window height to 2 lines, to avoid many cases of having to
"press <enter> to continue
"set cmdheight=2

"enable mouse for all modes
set mouse=a

"whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set autoindent
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

"search options
set hlsearch  "enables search highlighting
set ignorecase  "ignore case when searching
set incsearch   "incremental search that shows partial matches
set smartcase   "automatically switch search to case-sensitive when search
"query contains an uppercase letter.

"performance options
set lazyredraw  "do not update screen during macro or script executions

"cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> "use % to jump between pairs
runtime! macros/matchit.vim

"move up/down editor lines visually
nnoremap j gj
nnoremap k gk

set hidden  "allow hidden buffers
set ttyfast "speeds up scrolling
set laststatus=2  "status bar
set showmode "show current mode at the bottom
set showcmd "show incomplete cmds at the bottom

"code folding options
set foldmethod=indent
set foldnestmax=3
set nofoldenable

"misc options
set autoread  "automatically reload files changed outside of vim
set confirm "display a confirm when closing unsaved
set formatoptions+=j  "delete comment characters when joining lines

