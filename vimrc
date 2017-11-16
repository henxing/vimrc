" Add pathogen to runtime
runtime bundle/vim-pathogen/autoload/pathogen.vim

" Turn on pathogen
execute pathogen#infect()

" force 256 colors on the terminal
set t_Co=256

" Set theme to aldmeris
colorscheme aldmeris
let g:aldmeris_transparent = 1

" Set indent guide colors
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size  = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

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
set statusline+=%{fugitive#statusline()},\  " Current branch in git repo
set statusline+=\ %l\:%c                    " Column number of cursor

" Map \s to replace word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Remap \] to open tag in new vertical split
noremap <Leader>] :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

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
set incsearch

" Turn on row,col location of cursor
set ruler

" Show line numbers to the left of the window
set number

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

" Turn on spell check for markdown files
autocmd FileType markdown setlocal spell

" Share clipboard with system
set clipboard=unnamed

" Map F7 to format whole file
map <F7> mzgg=G`z

" Map F5 to format current paragraph
map <F5> mz{V}gq`z

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

" Tab navigation commands
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Remove octal formatting from number formats
set nrformats-=octal

" Uncrustify mappings
autocmd FileType c noremap <buffer> <c-f> :call Uncrustify('c')<CR>
autocmd FileType c vnoremap <buffer> <c-f> :call RangeUncrustify('c')<CR>
autocmd FileType cpp noremap <buffer> <c-f> :call Uncrustify('cpp')<CR>
autocmd FileType cpp vnoremap <buffer> <c-f> :call RangeUncrustify('cpp')<CR>

