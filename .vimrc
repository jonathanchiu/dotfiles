" core vim customizations
set backspace=indent,eol,start
set relativenumber
syntax on

" Whitespace
set wrap
set textwidth=120
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set hlsearch
" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set cursorline

" Vertical ruler
set colorcolumn=120
set clipboard=unnamed

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
"

" vim-plug
call plug#begin('~/.vim/plugged')
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
Plug 'koron/nyancat-vim'
" For autoclosing parentheses, brackets, etc
Plug 'Townk/vim-autoclose'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~20%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

nnoremap <silent> <leader>fh :History<CR>
nnoremap <silent> <leader>ch :History:<CR>
nnoremap <silent> <leader>fo :Files<CR>
" Write/quit shortcuts
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>
map <leader>f :Find
inoremap jj <ESC>
