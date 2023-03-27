syntax on

colorscheme pablo

" Deal with multiple unsaved buffers
set hidden

set mouse=a
set number

set tabstop=4
set shiftwidth=4
set noexpandtab

set encoding=utf-8
set showcmd
set ruler " Show the current line and colunm on the bottom line
set cursorline " Show the current line with a line
set backspace=indent,eol,start

" Better seach
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" Show special chars
set listchars=tab:→\ ,trail:·
set list

" Auto completion
set wildmenu

" Make it behave like bash completion
set wildmode=list:longest

" Ignore the files we can't edit
set wildignore=*.docx,*.jpg,*.png,*.jpeg,*.gif,*.pdf,*.out

" Indent with Tab in visual mode
:vmap <Tab> >
:vmap <S-Tab> <
