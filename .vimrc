set number
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set ai
set si
set hlsearch
set smartcase
inoremap fd <Esc>
syntax on
"set termguicolors
"colorscheme xian
set hidden
set autochdir
let mapleader = "\<Space>"
nnoremap <Leader>1 :b1 <CR>
nnoremap <Leader>2 :b2 <CR>
nnoremap <Leader>3 :b3 <CR>
nnoremap <Leader>4 :b4 <CR>
nnoremap <Leader>5 :b5 <CR>
nnoremap <Leader>6 :b6 <CR>
nnoremap <Leader>7 :b7 <CR>
nnoremap <Leader>8 :b8 <CR>
nnoremap <Leader><Right> :bn <CR>
nnoremap <Leader><Left> :bp <CR>
nnoremap <Leader>f :Files <CR>
nnoremap <Leader>d :bd <CR>
nnoremap <Leader>b :buffers <CR>
nnoremap <Leader>s :vsplit <CR>
nnoremap <Leader>w :w <CR>
nnoremap <Leader>q :q <CR>


call plug#begin('~/.vim/plugged')
Plug 'bling/vim-bufferline'
Plug 'itchyny/lightline.vim'
"Plug 'mengelbrecht/lightline-bufferline'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

colorscheme getafe
"let g:AirlineTheme='dracula'
"let g:airline_theme='cool'
set laststatus=2
set noshowmode

let g:bufferline_active_highlight = 'StatusLine'
let g:bufferline_echo = 0

let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'filename' ], [ 'bufferline' ] ],
  \ },
\ 'component': {
  \   'bufferline': '%{bufferline#refresh_status()}%{g:bufferline_status_info.before . g:bufferline_status_info.current . g:bufferline_status_info.after}'
  \ }
  \ }
