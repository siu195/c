" base config
set termguicolors
set noshowmode
set splitbelow
set splitright
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
" set clipboard+=unnamedplus
set hidden
set updatetime=100
set signcolumn=number
set noswapfile
set nobackup
set nowritebackup
set cursorline
" improve init time by telling nvim where python is located
let g:python3_host_prog = '/usr/bin/python3'
" improve init time by disabling language extension
let g:loaded_node_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
" map m as cut 
nnoremap m d
xnoremap m d
nnoremap M D
xnoremap M D
nnoremap mm dd
xnoremap mm dd
" map d as remove
nnoremap d "_d
xnoremap d "_d
nnoremap D "_D
xnoremap D "_D
" map c as change without cut
nnoremap c "_c
xnoremap c "_c
nnoremap C "_C
xnoremap C "_C
" add yank cursor to end
nnoremap Y y$
xnoremap Y y$
" map redo
nnoremap U <C-r>
xnoremap U <C-r>
" map space as leader
let mapleader = " "
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :noa w<CR>
nnoremap <Leader>q :bd<CR>
nnoremap <Leader>R :source ~/.config/nvim/init.vim<CR>
nnoremap <Leader><tab> <C-w><C-w>

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source ~/.config/nvim/plug.vim

if exists("g:neovide")
  set guifont=FiraCode\ Nerd\ Font:h11
endif
