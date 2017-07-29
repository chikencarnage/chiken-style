" Generic vim environment settings
set nocp
execute pathogen#infect()

set t_RV=
set number
set backspace=2
set t_Co=256
set background=dark
colorscheme jellybeans
syntax enable
filetype indent plugin on

set encoding=utf8
set ffs=unix,dos,mac
set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11

set nobackup
set nowb
set noswapfile

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<CR>
nmap <leader>wq :wq!<CR>
nmap <leader>q :q!<CR>
nmap W w !sudo tee % > /dev/null
