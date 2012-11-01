filetype off " turn off for pathogen.
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set backspace=indent,eol,start " make backspace work.

" python files
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 textwidth=80 nowrap

" javascript files
au FileType javascript setlocal ts=2 sts=2 et sw=2 textwidth=79

" jade files
au FileType jade setlocal sw=2 ts=2 sts=2 textwidth=0

" xml files
au FileType xml setlocal sw=2 ts=2 sts=2 textwidth=0

" html files
au FileType html setlocal sw=2 ts=2 sts=2 textwidth=0

" css files
au FileType css setlocal sw=2 ts=2 sts=2 textwidth=79

" indentation.
set autoindent

set nu " line numbers on.
syntax on " colored syntax on.
filetype on " try to detect filetypes.
filetype plugin indent on " enable loading indent file for filetype.

" for solarized colorscheme.
" let g:solarized_termcolors=256 allow 256 colors. NOTE: FOR SOME REASON THIS
" WAS NOT WORKING
set background=dark " background to dark.
colorscheme solarized " solarized colorscheme

" change to current directory.
"set autochdir
autocmd BufEnter * silent! lcd %:p:h

" show status line.
set laststatus=2
set statusline=%F%r%h%w\ %y\ [%L\ lines]\ %m

" SimpylFold preview folding.
let g:SimpylFold_docstring_preview = 1

" keybindings.
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
nmap <F4> :w<CR>:make<CR>:cw<CR>


" keybindings for folds
map <buffer> f za 
map <buffer> F :call ToggleFold()<CR> 

" set folds
set foldmethod=syntax

let javaScript_fold=1         " JavaScript
