set runtimepath^=~/dotfiles/nvim

source ~/dotfiles/vim/.vimrc
let &packpath = &runtimepath

if has('nvim')
  " Add neovim-specific configs here
endif
