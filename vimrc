if has('win32') || has ('win64')
    let $VIMHOME = $VIM."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

if has("mouse")
    set mouse=a
endif

if has("gui_running")
      colorscheme torte 
      set guifont=Menlo\ Regular:h18
endif

let mapleader = ","               " For <Leader>
syntax on

set nocompatible
set fileencoding=utf-8 
set smartindent
set number
set background=dark
set hlsearch

set ignorecase                    " Use case insensitive search, except when using capital letters
set smartcase

set expandtab                     " to insert real tab, try Ctrl-V <Tab>
set tabstop=4
set softtabstop=4
set shiftwidth=4

set tags+=../tags

filetype indent on
filetype plugin on

nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

nnoremap <Leader>v :e $VIMHOME/vimrc<CR>  

" For vim-latex
let g:tex_flavor='latex'
au  BufNewFile,BufRead,BufEnter *.tex setlocal spell spelllang=en_us

" For pathogen
execute pathogen#infect()

" For CtrlP
nnoremap <Leader>b   :CtrlPBuffer<CR>
nnoremap <Leader>cp  :CtrlPMixed<CR>

" For tagbar
nnoremap <Leader>tag :TagbarToggle<CR>

" For NERDTree
nnoremap <Leader>nt  :NERDTree<CR>

" clang_complete
set completeopt=menu,menuone,longest            " Complete options (disable preview scratch window)
set pumheight=15                                " Limit popup menu height
let g:SuperTabDefaultCompletionType="context"   " SuperTab option for context aware completion
let g:clang_complete_auto=0                     " Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_copen=1                    " Show clang errors in the quickfix window

" Quick snippets editing
nnoremap <Leader>snc   :e $VIMHOME/bundle/vim-snippets/snippets/c.snippets<CR>
nnoremap <Leader>sncpp :e $VIMHOME/bundle/vim-snippets/snippets/cpp.snippets<CR>
nnoremap <Leader>snt   :e $VIMHOME/bundle/vim-snippets/snippets/tex.snippets<CR>
