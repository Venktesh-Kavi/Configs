
" Enable syntax highlighting and set file encoding/format
syntax on
set fileformat=unix
set encoding=utf-8

" Tab and indentation settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab        " Use spaces instead of tabs
set autoindent
set smartindent
set smarttab

" Visual settings
set nowrap           " Don't wrap lines
set list             " Show invisible characters
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:< 
set cursorline       " Highlight the current line
set number           " Show line numbers
set relativenumber   " Show relative line numbers
set scrolloff=8      " Keep 8 lines above/below the cursor
set signcolumn=yes   " Always show the sign column

" Command-line and mode settings
set showcmd          " Display incomplete commands
set noshowmode       " Don't show the mode (handled by statusline)

" Text editing settings
set conceallevel=1   " Control how text is concealed
set shortmess+=c     " Avoid extra messages
set formatoptions-=cro " Stop Vim from auto-wrapping text

" Disable bell sounds
set noerrorbells
set visualbell       " Use visual bell instead of sound
set t_vb=            " Disable visual bell animation

" File backup and undo settings
set noswapfile       " Don't create swap files
set nobackup         " Don't keep backup files
set undodir=~/.vim/undodir " Directory for undo history
set undofile         " Save undo history to a file

" Clipboard and search settings
set clipboard=unnamed    " Use system clipboard
set ignorecase           " Ignore case in searches
set smartcase            " Override ignorecase if search contains uppercase
set incsearch            " Show matches as you type
set hlsearch             " Highlight search matches
nnoremap <CR> :noh<CR><CR> " Clear search highlight on Enter

" key bindings
nnoremap <silent> <C-f> :Files<CR>

" Source additional plugin and config files
so ~/.vim/plugin.vim
so ~/.vim/plugin-config.vim

" Plugin management using vim-plug
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'                  " Gruvbox color scheme
Plug 'preservim/nerdtree'               " File explorer
Plug 'vim-airline/vim-airline'          " Status line
Plug 'sheerun/vim-polyglot'             " Language packs
Plug 'mattn/emmet-vim'                  " HTML/CSS completion
Plug 'tpope/vim-commentary'             " Easy commenting
Plug 'tpope/vim-surround'               " Surround text with delimiters
Plug 'dense-analysis/ale'               " Linting and code checking
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Language Server Protocol
Plug 'preservim/tagbar'                 " Code structure browser
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim'  " Fuzzy file finder
Plug 'yggdroot/indentline'              " Display indentation levels

call plug#end()

" Plugin commands
" PlugInstall
" PlugUpdate
" PlugStatus
" PlugClean
" PlugUpgrade

" COLOR & THEME CONFIGURATION
set termguicolors         " Enable true color support
let g:gruvbox_italic=1    " Use italics in Gruvbox
colorscheme gruvbox       " Set Gruvbox theme
set background=dark       " Dark background

" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" Set terminal colors to match Gruvbox theme
let g:terminal_ansi_colors = [
    \ '#282828', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#a89984',
    \ '#928374', '#fb4934', '#b8bb26', '#fabd2f', '#83a598', '#d3869b', '#8ec07c', '#ebdbb2',
\]
