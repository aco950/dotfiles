"
" Begin ~/.vimrc
"

" General settings:
set ts=4
set nohlsearch
set noswapfile

" Enable syntax colors:
syntax on

" Disable auto-commenting:
set paste

" Enable ruler:
set ruler

" Make Vim search case-insensitive:
set ic

" Disable Vim matching parenthesis highlighting:
let g:loaded_matchparen=1

" Syntax highlighting for Markdown (.md):
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Syntax Hightlighting for HL7:
syn match comment '|'
syn match string '\^'
syn match Special  '\r[A-Z0-9]*'
syn match Special  '\\r[A-Z0-9]*'
syn match Special  'MSH'
syn match Special  '^[0-9A-Z][0-9A-Z][0-9A-Z]|'
syn match Special  '|\\r[0-9A-Z][0-9A-Z][0-9A-Z]|'
syn region  Comment     start="^--" end="$"
syn match Identifier '|ADT^A[0-1][0-9]|'
syn match Search '|ORM^O01|'
syn match SpellBad '|ORU^R01|'
syn match Identifier   '|ORU^[^|]|'
syn match ModeMsg '|200[0-9]\{11,13}'

" Clear the terminal after you exit Vim:
au VimLeave * :!clear

" Set the Vim status line at the bottom status bar:
"set statusline +=%F

" Set the Vim status line to display the line and column number at the bottom status bar:
set statusline +=%F\ %l\:%c

" Always display the Vim status line at the bottom status bar. This works
" with the above 'statusline' setting. Without this setting, the Vim status line
" disappears after you scroll up or down a few lines.
set laststatus=2

" Customize status line color background to blue, and foreground to yellow:
hi StatusLine ctermbg=yellow ctermfg=blue

" Allow backspacing. I needed this after removing a vimrc in /etc.
set backspace=indent,eol,start

" End ~/.vimrc

