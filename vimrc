set fileencodings=utf-8,big5,gbk,latin1
set fileencoding=utf-8 

set smartindent

set number
"set background=dark

"to insert real tab, try Ctrl-V <Tab>
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

let mapleader = ","

if has("mouse")
    set mouse=a
endif

syntax on

"nnoremap <F11>   :TlistToggle<CR>
"nnoremap <F9>    :wincmd p<CR>

"Switch between files
"nnoremap <F2>        :ls<CR>:bu
"nnoremap <Leader>bu  :ls<CR>:bu

nnoremap <Leader>b  :CtrlPBuffer<CR>
nnoremap <Leader>cp :CtrlPMixed<CR>

nnoremap <Leader>tag :TagbarToggle<CR>

filetype indent on
filetype plugin on

"Come from OmniCppComplete
set nocompatible
"nnoremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse latex-suite. Set your grep
" program to alway generate a file-name.
" set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.

"close automatically the preview window after a completion
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"set completeopt="menu"

"allows omnicpp to complete STL objects
"set tags+=~/MyTags/stl.tags,../tags
set tags+=../tags

set hlsearch

set guifont=Menlo\ Regular:h18

if has("gui_running")
      colorscheme torte 
endif

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
au BufNewFile,BufRead,BufEnter *.tex setlocal spell spelllang=en_us

" For pathogen package
execute pathogen#infect()


" For NERDTree
nnoremap <Leader>nt :NERDTree<CR>

nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
nnoremap <Leader>v :e $HOME/.vim/vimrc<CR>

" clang_complete
" Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest
" Limit popup menu height
set pumheight=15

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType="context"

" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto=0
" Show clang errors in the quickfix window
let g:clang_complete_copen=1


" quick edit snippets
nnoremap <Leader>snc   :e ~/.vim/bundle/vim-snippets/snippets/c.snippets<CR>
nnoremap <Leader>sncpp :e ~/.vim/bundle/vim-snippets/snippets/cpp.snippets<CR>
nnoremap <Leader>snt   :e ~/.vim/bundle/vim-snippets/snippets/tex.snippets<CR>
