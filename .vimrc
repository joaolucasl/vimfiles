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
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Completion
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Productivity Plugins
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim' | Plug 'garbas/vim-snipmate'

" Language Plugins 
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'digitaltoad/vim-pug', { 'for': 'jade' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'grvcoelho/vim-javascript-snippets', { 'for': 'javascript' }
Plug 'rust-lang/rust.vim', { 'for': 'rust'}
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
Plug 'fatih/vim-go', {'for': 'go'} 





call plug#end()

" ~ DEOPLETE ~
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1

" ~ AIRLINE ~
let g:airline_powerline_fonts = 1
let g:airline_inactive_collapse = 1
let g:airline#extensions#branch#displayed_head_limit = 15
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
colorscheme molokai

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

