if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" onedark plugin
colorscheme onedark
