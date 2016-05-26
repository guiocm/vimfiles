
set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on

" my configs

syntax enable

" tabulation
set softtabstop=4
set shiftwidth=4
set expandtab

" backspace
set backspace=indent,eol,start

" always show line numbers
set number

" show matching parenthesis
set showmatch

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" comma as leader
let mapleader=","

" quick edit/reload .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" keeps old buffer hidden when opening a new one
set hidden

" larger command and undo history
set history=1000
set undolevels=1000

" change terminal title
set title

" don't keep backup or swap files
set nobackup
set noswapfile

" highlight tabs, trailing whitespaces, ...
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" F2 activates paste mode (no smart indenting and stuff)
set pastetoggle=<F2>

" map ; to : when in command mode
nnoremap ; :

" logical split behavior
set splitbelow
set splitright

" window navigation with ctrl + (h j k l)
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" clear highlighted text with ,/
nmap <silent> ,/ :nohlsearch<CR>

" sudo save from inside vim
cmap w!! w !sudo tee % >/dev/null

" remove toolbar from gVim
set guioptions-=m
set guioptions-=T
set guioptions-=r

" set gVim font on windows
if has("gui_win32")
    set guifont=Consolas:h12:cANSI
endif

" prevents screen from annoyingly flash when on terminal
set t_vb=

" set default file encoding to UTF-8
setglobal fileencoding=utf-8

" show a visual indicator of the 80-column limit
set colorcolumn=80

" highlight current line
set cursorline

" buffer shortcuts
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprev<CR>
nmap <leader>bl :buffers<CR>
nmap <leader>bd :bnext<CR>:bdelete #<CR>
nmap <leader>bj :buffers<CR>:buffer 

" highlights all occurrences of term under cursor
nmap <leader>h *N

" enables mouse interaction
set mouse=a

" allows project-specific vimrcs
set exrc

" switches folds with the space key
nmap <space> za


" YouCompleteMe config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
set shortmess+=c " fixes annoying status message. needs Vim 7.4.314+

" NERDTree config

" opens NERDTree if no file is specified when launching vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeIgnore = ['\.pyc$']

nmap <leader>t :NERDTreeToggle<CR>

" solarized config
" if running on a terminal, it should have TERM="xterm-256color"
" also, if the terminal has solarized colorscheme installed, add
" export SOLARIZED=true to your .bashrc
if has("gui_running") || $TERM == 'xterm-256color'
    set background=dark
    let g:solarized_termtrans=1
    if $SOLARIZED == 'true'
        let g:solarized_termcolors=16
    else
        let g:solarized_termcolors=256
    endif
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    colorscheme solarized
elseif $TERM == 'cygwin'
" if running on windows terminal, configure the
" terminal app to use the solarized colorscheme
    let g:solarized_termcolors=16
    colorscheme solarized
endif

