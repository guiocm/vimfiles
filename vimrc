
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


" supertab config
let g:SuperTabDefaultCompletionType = "context"

" tagbar config
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

" solarized config
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" nerdtree config
map <leader>t - :NERDTreeToggle<CR>


