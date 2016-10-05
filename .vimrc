set shell=/bin/bash
set nocompatible

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set number
set cursorline
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set wildmenu
set lazyredraw
set showmatch
set tabstop=2 shiftwidth=2 expandtab " Indenting 2 spaces as default
set ww+=<,> " Move to end of last line/start of next when reaches last column 
let g:deoplete#enable_at_startup=1

nnoremap <leader>ev :edit ~/.vimrc<cr>
noremap <leader>sv :source ~/.vimrc<cr>

" Moving Around Buffer 
nnoremap <C-w> :close<cr>
nnoremap <C-Up> <C-w><Up>
nnoremap <C-Down> <C-w><Down>
nnoremap <C-Left> <C-w><Left>
nnoremap <C-Right> <C-w><Right>
" Toggle nerdtree with F10  
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree  
map <F9> :NERDTreeFind<CR>  

call plug#begin()

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Language Plugins 
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'digitaltoad/vim-pug', { 'for': 'jade' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }


call plug#end()

colorscheme molokai

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

