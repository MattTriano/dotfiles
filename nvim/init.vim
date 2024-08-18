if has('nvim')
  let g:plug_home = stdpath('data') . '/plugged'
else
  let g:plug_home = '~/dotfiles/vim/plugins'
endif

set runtimepath^=~/dotfiles/vim
set runtimepath+=~/dotfiles/nvim
let &packpath = &runtimepath
source ~/dotfiles/vim/.vimrc

if has('nvim')
  call plug#begin(g:plug_home)
  Plug 'davidhalter/jedi-vim'
  " Add any Neovim-specific plugins here
  call plug#end()

  " Add neovim-specific configs here
endif
