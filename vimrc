" Automatically install vim-plug if it is missing
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Begin vim-plug section
call plug#begin('~/.vim/plugged')
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'google/vim-searchindex'
Plug 'tmux-plugins/vim-tmux'
Plug 'chrisbra/csv.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'hdima/python-syntax'
Plug 'cofyc/vim-uncrustify'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tell-k/vim-autopep8'
Plug 'craigemery/vim-autotag'
Plug 'fidian/hexmode'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'heavenshell/vim-pydocstring'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-commentary'
Plug 'lygaret/autohighlight.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'Yggdroot/indentLine'
call plug#end()
" End vim-plug section

" Set up colors
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

syntax enable
set background=dark
colorscheme solarized8

" Display line at 80 chars
highlight ColorColumn ctermbg=grey
set colorcolumn=80

" python-syntax options
let python_highlight_all = 1
let python_version_2 = 1

" Entering vim mode
set nocompatible

" Map \s to replace word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Remap \] to open tag in new vertical split
noremap <Leader>] :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Map \d to delete trailing white space
noremap <silent> <Leader>d :let _s=@/ <Bar> :%s/\s\+$//e <Bar>
            \ :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Map \r to source vimrc
noremap <Leader>r :source ~/.vim/vimrc<CR>

" when indenting, use 4 spaces width
filetype plugin on
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

syntax on
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'
let g:airline_powerline_fonts = 1

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

" Remap Pydocstring
nmap <silent> <C-q> <Plug>(pydocstring)

" Remap VimSplit navigation commands
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set VimSplit new open location
set splitbelow
set splitright

" Automatically resize splits on window size change
autocmd VimResized * wincmd =

" Alias for opening vertical split with Syntastic horizontal split
nnoremap <Leader>v :botright vnew

" Remove octal formatting from number formats
set nrformats-=octal

" Add mapping to <C-s> for increment
nnoremap <C-s> <C-a>

" ALE settings
nnoremap <Leader>c :ALEToggle<CR>
let g:ale_python_pylint_options = '--disable=W0212,C0111,R0913,R0903,R0902'

" Automatic highlighting of words under the cursor
set updatetime=500 " milliseconds

" Alias commonly mistyped commands
fun! SetupCommandAlias(from, to)
    exec 'cnoreabbrev <expr> '.a:from
                \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
                \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun

call SetupCommandAlias("W", "w")
call SetupCommandAlias("Q", "q")
call SetupCommandAlias("X", "x")
