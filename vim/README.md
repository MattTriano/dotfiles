# vim

# Usage

This config sets `,` as the leader for custom commands and aliases.

**Note**: There's a pretty quick timeout on multi-key sequences, so if you take too long to type in a sequence (e.g., comma then s-key then s-key (aka `,ss`)), vim will execute the operations associated with the individual keys. To increase the timeout length, add something like `set timeoutlen=1000` (for 1000 milliseconds) to the `~/dotfiles/vim/.vimrc` file.

## Spellcheck
* `,ss`: Turns on spellcheck mode
* `,sn`: Go to the next misspelled word
* `,sp`: Go to the prior misspelled word
* `,sa`: Approves the word's spelling (and adds the word to the spell file)
* `,s?`: Suggests spelling corrections

## Autocompletion

Vim's basic autocomplete feature makes suggestions based on the other strings/words in the current open document(s).

While in insert mode, use `Ctrl+n` or `Ctrl+p` to cycle through options.

### Python Autocompletion

This configuration uses the `jedi-vim` plugin for more advanced python autocompletion.

* `Ctrl+Space`: Start autocomplete mode.
* `,d`: Go to definition (of the symbol under the cursor).
* `,g`: Go to the assignment of the symbol.
* `,s`: Go to the typing stub for the symbol.
* `shift+k`: Show documentation for the symbol.
* `,n`: Show all usages of the symbol.
* `,r`: Rename the symbol.
 
