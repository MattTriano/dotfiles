# dotfiles

The config files supporting my workflows.

## Organization

Examples assume the dotfiles dir will be located at `~/dotfiles`.

Directories will store tool-specific dotfiles and will have canonical names (e.g. `vim`, `nvim`, `git`, `tmux`, etc).

## Symlinking

Tools/programs typically expect to find dotfiles in specific places (most are in the home directory), but I want to organize my dotfiles in one place so that it's easier to track and extend them.

To symlink a file:

```bash
Form:           ln -s [TARGET] [LINK_NAME]
Example (file): ln -s ~/dotfiles/vim/.vimrc ~.vimrc
Example (dir):  ln -s ~/dotfiles/nvim ~/.config/nvim
```



