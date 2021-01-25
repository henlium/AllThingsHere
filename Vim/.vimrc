""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable filetype plugins
filetype plugin on
filetype indent on

" :W sudo save the file
command W w !sudo tee % > /dev/null

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""

set so=7      " =scrolloff, show how many lines above and below cursor
set wildmenu  " Better command-line completion
set showcmd
set nu			  " =number, show line number
set cursorline
set showmatch " show matching bracket
set background=dark	" another is 'light'

syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent
""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=2
set shiftwidth=2

set expandtab " convert input tab to space, according to tabstop

set smarttab

set ai			  " auto indent
set si        " smart indent
set wrap      " wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ignorecase  " case insensitive
set smartcase   " use case sensitive search if any capital letter used
set incsearch   " show match as search proceed
set hlsearch    " hignlighting matches

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

""""""""""""""""""""""""""""""""""""""""""""""""""""""

set backupdir=~/tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
set backup		" keep a backup file
" set textwidth=78
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set autochdir

" Split more naturally
set splitbelow
set splitright

" VIM 6.0,
if version >= 600
    set nohlsearch
    set foldmethod=marker
    set foldlevel=1
    set fileencodings=utf-8,sjis,big5,latin1
else
    set fileencoding=taiwan
endif

" Tab key binding
if version >= 700
  map  <C-c> :tabnew<CR>
  imap <C-c> <ESC>:tabnew<CR>
  map  <C-k> :tabclose<CR>
  map  <C-p> :tabprev<CR>
  imap <C-p> <ESC>:tabprev<CR>
  map  <C-n> :tabnext<CR>
  "imap <C-n> <ESC>:tabnext<CR>

  map g1 :tabn 1<CR>
  map g2 :tabn 2<CR>
  map g3 :tabn 3<CR>
  map g4 :tabn 4<CR>
  map g5 :tabn 5<CR>
  map g6 :tabn 6<CR>
  map g7 :tabn 7<CR>
  map g8 :tabn 8<CR>
  map g9 :tabn 9<CR>
  map g0 :tabn 10<CR>
  map gc :tabnew<CR>
  map gn :tabn<CR>
  map gp :tabp<CR>

  highlight TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
  highlight TabLine    term=bold cterm=bold
  highlight clear TabLineFill
end

" Crontabs must be edited in place
" au BufRead /tmp/crontab* :set backupcopy=yes

" Colorscheme
colorscheme srcery

" My key mapping

" Automatic installation for vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'srcery-colors/srcery-vim'
call plug#end()

" NERDTree configuration
map <C-o> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
