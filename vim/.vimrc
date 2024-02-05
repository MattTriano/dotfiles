let g:mapleader = ","
set runtimepath^=~/dotfiles/vim

set history=500
set encoding=utf8

set so=7
set wildmenu
set ruler
set number
set termguicolors
set whichwrap+=<,>,[,],h,l
set backspace=indent,eol,start
colorscheme desert

syntax on
filetype on
filetype plugin on
filetype indent on
 
nmap <leader>ss :setlocal spell!<cr>
nmap <leader>sn ]s
nmap <leader>sp [s
nmap <leader>sa zg
nmap <leader>s? z=
 
set spelllang=en_us
set spellfile=~/dotfiles/vim/spell/en.utf-8.add

" Return to last edited position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"""""""""""""""""""""""""""""""""""""""""
"               Plugins                 "
"""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/dotfiles/vim/autoload/plug.vim'))
  silent !curl -fLo ~/dotfiles/vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $HOME/.vimrc
endif

call plug#begin('~/dotfiles/vim/plugins')
Plug 'davidhalter/jedi-vim'
call plug#end()

