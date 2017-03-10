" show existing tab with 4 spaces width
filetype plugin indent on

" when indenting with '>', use 4 spaces width
set tabstop=4

" On pressing tab, insert 4 spaces
set shiftwidth=4

set expandtab

syntax on

" Turn on search result highlighting
set hlsearch

" Turn on row,col location of cursor
set ruler

" Show line numbers to the left of the window
set number

" Turn on scrolling
set mouse=a

" Force Markdown highlighting on *.md files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

