# Vim Shortcuts

This file contains common usage of vim.

## Moving

##### Normal mode
- `h/j/k/l`: left/down/up/right
- `I/A`: jump to the head/end of line and start edit mode

## Searching

- `/pattern`: search for pattern _forwardly_
- `?pattern`: search for pattern _backwardly_
- `n`: repeat _forward_ search
- `N`: repeat _backward_ search


## Multitasking

### Window

- `:e filename`: edit another file
- `:split filename`: split window and load another window (horizontally)
- `:vsplit filename`: split window and load another window (vertically)
- `:sview filename`: same as split, but readonly
- `C-w arrow/h/j/k/l`: move cursor to the corresponding window
- `C-w C-w`: move cursor among windows (cyclically)
- `C-w _`: maximize current window
- `C-w =`: make all windows equal size
