# Vim Shortcuts

This file contains common usage of vim.

## Normal mode

### Moving

- `h/j/k/l`: left/down/up/right
- `w/b`: move to the _start_ of the next/previous word
- `W/B`: move to the _start_ of the next/previous word (seperated by spaces)
- `0/$`: move to the _start/end_ of the line
- `%`: jump to the matching bracket or parenthesis
- `gg/G`: go to the first/last line
- `{n}G`: go to line _n_


### Editing

- `r`: replace the character under the cursor
- `u`: undo the last change
- `<C-r>`: redo
- `.`: repeat a previous change

#### Insert

- `i`: enter insert mode
- `I/A`: jump to the head/end of line and enter insert mode
- `o/O`: insert with a new line below/above
- `{n} i text <Esc>`: insert text repeatedly _n_ times

#### Cut, copy and paste

- `x/X`: delete the character under the cursor or on the left of the cursor
- `d(n)w`: delete a word (or _n_ words, space included)
- `d(n)e`: delete a word (or _n_ words, space excluded)
- `(n)dd`: delete a line (or _n_ lines)
- `p/P`: paste the cut or copied characters after/before the cursor

All deletions are actually cut. You can replace `d` with `y` to do copying.

### Searching

- `/pattern`: search for pattern _forwardly_
- `?pattern`: search for pattern _backwardly_
  - `n/N`: repeat _forward/backward_ search
- `*/#`: find the next/previous occurrence of the word under cursor

## Visual Mode

- `v`: enter visual mode

### Select

Move the cursor with command the same as those in normal mode.

### After select

- `d`: delete the selected characters.
- `y`: copy the selected characters.

## Multitasking

### Window

- `:e filename`: edit another file
- `:qall`: quit all winodws
- `:wall`: write all winodws

#### Splitting

- `:split filename`: split window and load another window (horizontally)
- `:vsplit filename`: split window and load another window (vertically)
- `:sview filename`: same as split, but readonly

#### Moving cursor

- `C-w arrow/h/j/k/l`: move cursor to the corresponding window
- `C-w C-w`: move cursor among windows (cyclically)

#### Adjusting window

- `C-w _`: maximize current window
- `C-w =`: make all windows equal size

**TODO: windows, tabs, commands, and language-specific things (like commenting)
