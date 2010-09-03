if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

set nocompatible        " Use Vim defaults (much better!)
set bs=indent,eol,start " allow backspacing over everything in insert mode
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
                        " than 50 lines of registers
set history=50          " keep 50 lines of command line history
"set ruler               " show the cursor position all the time
set number              " show line numbers
set smarttab            " smart tabulatin and backspace
set title               " show title
"set incsearch           " find while typing
set t_Co=256            " terminal uses 256 colors
set pastetoggle=<F2>

" Settings for Pathogen
filetype off            " Disabling before Pathogen. Loaded later.
call pathogen#runtime_append_all_bundles()


" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable formatting based on file types
  augroup myfiletypes
    autocmd!
    autocmd FileType ruby,eruby,yaml,cucumber,vim,lua,latex,tex set autoindent shiftwidth=2 softtabstop=2 expandtab
    autocmd BufRead *.mkd,*.markdown  set ai formatoptions=tcroqn2 comments=n:>
  augroup END 
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  "set hlsearch
endif

filetype plugin indent on

" Set the leader key
let mapleader = ","

" Set the key to toggle NERDTree
nnoremap <leader>d :NERDTreeToggle<cr>

"let NERDChristmasTree = 1               " NERDTree with colors
"let NERDTreeHighlightCursorline = 1     " highlight cursorline
let NERDTreeMapActivateNode='<CR>'      " set Enter/Return to activate a node

" Set color scheme
colorscheme molokai
