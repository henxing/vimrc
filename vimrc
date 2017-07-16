" Add pathogen to runtime
runtime bundle/vim-pathogen/autoload/pathogen.vim

" Turn on pathogen
execute pathogen#infect()

" force 256 colors on the terminal
set t_Co=256

" Set theme to aldmeris
colorscheme aldmeris
let g:aldmeris_transparent = 1

" python-syntax options
let python_highlight_all = 1
let python_version_2 = 1

" Entering vim mode
set nocompatible

" Keep statusline visible
set laststatus=2

" Build statusline
set statusline=%f                           " Path to the file
set statusline+=\ -\                        " Separator
set statusline+=FileType:                   " Label
set statusline+=%y                          " Filetype of the file
set statusline+=%{fugitive#statusline()}    " Current branch in git repo
set statusline+=, col:\ %c                  " Column number of cursor

" Map \s to replace word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

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

" Turn on cursorline highlighting
set cursorline
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE

" turn on scrolling if its there
if has('mouse')
    set mouse=a
endif

" Force Markdown highlighting on *.md files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Disable markdown folding by default
let g:vim_markdown_folding_disabled = 1

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

" Uncrustify mappings
autocmd FileType c noremap <buffer> <c-f> :call Uncrustify('c')<CR>
autocmd FileType c vnoremap <buffer> <c-f> :call RangeUncrustify('c')<CR>
autocmd FileType cpp noremap <buffer> <c-f> :call Uncrustify('cpp')<CR>
autocmd FileType cpp vnoremap <buffer> <c-f> :call RangeUncrustify('cpp')<CR>

