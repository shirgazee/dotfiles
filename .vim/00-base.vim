set nocompatible

let mapleader = " " " leader is the space key

set termguicolors " true color
set hidden " hide buffers
set title " set terminal title
set ruler " Always show current position
set number " Line numbers
set hlsearch " Highlight search results
set incsearch  " Makes search act like search in modern browsers
set ignorecase " ignore case in search
set foldcolumn=1 " Add a bit extra margin to the left
set expandtab " Use spaces instead of tabs
set smarttab " Be smart when using tabs ;)
set tabstop=4 " Tab = x number of spaces
set shiftwidth=4 " Shift = x number of spaces
set smartindent " like autoindent but smarter
set belloff=all " Turn off error bell
set wrap "Wrap lines
set wildmenu " Show possible completions on command line
set wildmode=list:longest,full " List all options and complete
set autoread " auto reload if it changed outside of vim
set mouse= " mouse fix for iterm2
set noswapfile " ignore swap file
syntax on " Enable syntax highlighting

" Tab mappings
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

nmap <leader>w :w!<CR> " easier write
nmap <leader>q :q<CR> " easier quit

