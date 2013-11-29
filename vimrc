
set nocompatible

" pathogen basics
execute pathogen#infect()
syntax on
filetype plugin indent on

" my configs

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


" supertab config
let g:SuperTabDefaultCompletionType = "context"

" tagbar config
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

" solarized config
" if running on a terminal, add
" export TERM="xterm-256color"
" to your .bashrc
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
elseif $SOLARIZED == 'yes'
    set background=dark
    let g:solarized_termtrans=1
    let g:solarized_termcolors=16
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    colorscheme solarized
elseif $TERM == 'cygwin'
" if running on windows terminal, configure the
" terminal app to use the solarized colorscheme
    let g:solarized_termcolors=16
    colorscheme solarized
endif

" nerdtree config
map <leader>t - :NERDTreeToggle<CR>

" syntastic config
let g:syntastic_python_checkers=['flake8']
let g:syntastic_check_on_open=1


