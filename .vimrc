set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
set expandtab           " use spaces instead of tabs (can also be set et)
set tabstop=2           " can also be ts=2
set shiftwidth=2        " can also be sw=2
set textwidth=78
set autoindent
set smartindent
set smarttab            " make <tab> and <backspace> much smarter
set showmatch           " show matching brackets
set title               " let VIM change the title
set titlestring=vim:\ %F    " format the title

" shift key still on? map it so vim doesn't complain
nmap :W :w
nmap :Q :q

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif
