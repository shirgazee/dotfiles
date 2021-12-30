set nocompatible

let mapleader = " " " leader is the space key

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

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
set wildignorecase
set cc=120 " set a 120 column border for good coding style
filetype plugin indent on " allow auto-indenting depending on file type
set autoread " auto reload if it changed outside of vim
set mouse= " mouse fix for iterm2
set noswapfile " ignore swap file
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
syntax on " Enable syntax highlighting
set ttyfast " faster scrolling

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

