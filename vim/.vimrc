" Basic Options
let mapleader = ' '

set number
set hidden
set backspace=2
set ruler
set title

set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch

set tabstop=2
set shiftwidth=2
set expandtab

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'cfdrake/vim-carthage'
Plug 'cfdrake/vim-pbxproj'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" Colors
if has('gui_running')
  colorscheme industry
  set guifont=Menlo:h14
  set background=dark
else
  colorscheme default
endif

highlight clear SignColumn

" Hotkeys
map <leader>f :Files<CR>
map <leader>l :Lines<CR>
map <leader>b :Buffers<CR>
map <leader>g :Rg<CR>
