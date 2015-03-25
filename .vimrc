" Run pathogen
execute pathogen#infect()

" Syntax highlighting
syntax on
" Autodetect filetype
filetype plugin indent on

" Shared clipboard
set clipboard+=unnamed
" Set line numbers display
set nu

" Split characters set
set enc=utf-8
set fillchars+=vert:\|
set fillchars+=stl:\-
set fillchars+=stlnc:\-

" Theme colors and font
color solarized
set background=light
set gfn=Menlo:h16

" Read slim file type
au! BufRead,BufNewFile *.slim         setfiletype slim
autocmd BufWritePre * :%s/\s\+$//e

" Don't write backup files
set nobackup
set nowritebackup

" Search settings
set incsearch
set ignorecase
