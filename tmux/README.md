# tmux (Terminal Multiplexer)

## Usage

All commands in `tmux` are triggered by a prefix key then the command. The default `tmux` prefix key is `Ctrl+b`, but this configuration uses `Ctrl+s`.

* Prefix: `Ctrl+s` (or `C-s` going forward)

### Basic commands

Commands (in my list) that start with a `$` are for the command line.
Commands (in my list) that start with the Prefix are for use inside `tmux`.

* `$ tmux`: starts `tmux` session.

**Panes**
* `C-s |`: Split the current pane into left and right panes.
* `C-s -`: Split the current pane into top and bottom panes.
* `C-d`:   Closes the current pane (can also be done by entering `exit`)
* `C-s <arrow key>`: Switch to the next pane in that direction.
* `alt <arrow key>`: Same as above, using alt instead of the prefix.
* `C-s h|j|k|l`: Same as above, but using h (left), j (right), k (up), or l (down) instead of arrows.
* `C-s H|J|K|L`: Resizes the active pane by one line . 


**Windows**
* `C-s c`: Create a new window.
* `C-s n`: Switch to the next window.
* `C-s p`: Switch to the prior window.
* `C-s <number>`: Switch to the window with that number (indicated at the start of the status bar).

**Sessions**
* `$ tmux ls`: list running `tmux` sessions.
* `$ tmux attach -t <number>`: Puts you back in the session with that number.
* `$ tmux new -s <session-name>`: Creates a named session (like `screen -S <session-name>`).
* `$ tmux attach -t <session-name>`: Puts you back in the session with that name.

**Help**
* `C-s ?`: See a list of all commands

