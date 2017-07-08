" Start initalizing Vundle
set nocompatible                                     
filetype off                            
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Put some plugins below this line
Plugin 'wakatime/vim-wakatime'
" Stop here
call vundle#end()
filetype plugin indent on
" Some color scheme
syntax on
colorscheme newproggie
" Nice little line-number thing
set number
