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

## Alternate to symlinks

If you want to keep your home dir a bit neater, you can use env vars to point the shell to the expected config files.

Add these env vars to `~/.bashrc`

```
...
export XDG_CONFIG_HOME=$HOME/dotfiles
export VIMINIT='source $HOME/dotfiles/vim/.vimrc'
```

## Setting up a venv to isolate LSP installation stuff

```console
cd ~/dotfiles
python -m venv temp_venv
source temp_venv/bin/activate
python -m pip install --upgrade pip
pip install virtualenv
virtualenv --always-copy .venv
deactivate
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
rm -r temp_venv
```
