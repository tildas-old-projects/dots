" tilda's dots
" Made on Jul 31st, 2017 and improved ever since.

if !has('nvim')
    echom "This configuration is only for Neovim."
    echom "Please install Neovim and then try again."
    qa!
endif

" Begin init
if &compatible
  set nocompatible
endif
filetype off

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  " Dein manages itself via this line
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  " |
  " v Put plugins right below here
  call dein#add('wakatime/vim-wakatime')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('notpratheek/vim-luna')
  call dein#add('w0rp/ale')
  call dein#add('edkolev/tmuxline.vim')
  call dein#add('mhinz/vim-startify')
  call dein#add('othree/html5.vim')
  call dein#add('tmhedberg/simpylfold')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Vimjas/vim-python-pep8-indent')
  call dein#add('aurieh/discord.nvim')
  call dein#add('mattn/emmet-vim')
  call dein#add('neoclide/vim-easygit')
  " Extra stuff: don't touch
  call dein#end()
  call dein#save_state()
endif

" Plugin check for not installed plugins
if dein#check_install()
  call dein#install()
endif

" Theme.
set termguicolors
filetype plugin indent on
syntax enable
colorscheme luna

" deoplete config!
let g:deoplete#enable_at_startup = 1

" vim-airline config
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"
let g:airline#extensions#ale#enabled = 1

" vim-startify config
" some lines stolen from mhinz/dotfiles
let g:startify_custom_header = 'map(startify#fortune#boxed(), ''"   ".v:val'')'
let g:startify_fortune_use_unicode = 1

" ALE config
let g:ale_linters = {
\    'python': ['flake8'],
\}
let g:ale_fixers = {
\    'python': ['yapf']
\}

" tmuxline.vim config
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '',
    \ 'right' : '',
    \ 'right_alt' : '',
    \ 'space' : ' '}

" Alt-<arrow> shortcuts
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

set number " line numbers.
set noshowmode " statusline shows mode
let g:easygit_enable_command = 1 " replace fugitive
