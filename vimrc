" show existing tab with 4 spaces width
filetype plugin indent on

" when indenting, use 4 spaces width
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

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

" Share clipboard with system
set clipboard=unnamed

" Map F7 to format whole file
map <F7> mzgg=G`z

" Turn on spellcheck
setlocal spell spelllang=en_us

