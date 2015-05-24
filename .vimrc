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

" Mouse options
set mouse=a
set scrolloff=5

" Indentation settings
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

" Less timeout for keycode entering
set ttimeoutlen=100

" Nerdtree mapped to cmd-N
let NERDTreeAutoDeleteBuffer=1
map <C-n> :NERDTreeToggle<CR>

" Run nerdtree on startup
function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()

" Open the Ag command and place the cursor into the quotes
nmap ,ag :Ag ""<Left>
nmap ,af :AgFile ""<Left>
