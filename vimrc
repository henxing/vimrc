" Add pathogen to runtime
runtime bundle/vim-pathogen/autoload/pathogen.vim

" Turn on pathogen
execute pathogen#infect()

" show existing tab with 4 spaces width
filetype plugin indent on
filetype plugin on

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

" Turn on scrolling if its there
if has('mouse')
    set mouse=a
endif

" Force Markdown highlighting on *.md files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Indentation settings for json files
autocmd FileType json setlocal shiftwidth=2 tabstop=2

" Share clipboard with system
set clipboard=unnamed

" Map F7 to format whole file
map <F7> mzgg=G`z

" Set spellcheck language
setlocal spell spelllang=en_us

" Turn off spellcheck by default
set nospell

" Remap VimSplit navigation commands
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set VimSplit new open location
set splitbelow
set splitright

