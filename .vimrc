" tilda's dots
" Made on Jul 31st, 2017 and improved ever since.

if !has('nvim')
    echom "This configuration is only for Neovim."
    echom "Please install Neovim and then try again."
    qa!
endif

" Begin init
set nocompatible
filetype off
call plug#begin('~/.local/share/nvim/plugged')
" |
" v Put plugins down there
Plug 'wakatime/vim-wakatime'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'ayu-theme/ayu-vim'

" Don't put any down here though.

call plug#end()
set termguicolors
filetype plugin indent on
let ayucolor="mirage"
colorscheme ayu


" vim-airline config
let g:airline_theme='ayu_mirage'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" Alt-<arrow> shortcuts
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
set number " line numbers.
