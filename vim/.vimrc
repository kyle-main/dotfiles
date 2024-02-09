syntax on
colorscheme onedark

set nocompatible              " required
filetype off                  " required

" set to show line number
set number

" Set encoding
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" SimpylFold improves folding
Plugin 'tmhedberg/SimpylFold'
" indentpython improves auto indentation
Plugin 'vim-scripts/indentpython.vim'
" YouCompleteMe for auto-complete
Plugin 'Valloric/YouCompleteMe'
"    Has dependencies:
"    https://github.com/ycm-core/YouCompleteMe#installation
" syntastic for syntax checking/highlighting
Plugin 'vim-syntastic/syntastic'
" vim-flake8 adds PEP 8 checking
Plugin 'nvie/vim-flake8'
" NERDTree for file browsing
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$','\~$'] "ignore files in NERDTree
" NERDTree with tabs
Plugin 'jistr/vim-nerdtree-tabs'
" ctrlP for searching
Plugin 'kien/ctrlp.vim'
" vim-fugitive for git integration
Plugin 'tpope/vim-fugitive'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Default split locations
" Open with :sp and :vs
set splitbelow
set splitright

" Split navigations
" Control + Vim movement to traverse splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

"" Turn off comment continuation
autocmd FileType * set formatoptions-=cro

" Enable folding with the spacebar (default is :za)
nnoremap <space> za
" Enable if you want docstrings outside folds
" let g:SimpylFold_docstring_preview=1

" Add auto indentation
" Add the proper PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
" For full stack development
au BufNewFile,BufRead *.js,*.ts,*.html,*.css,*.scss
    \ set tabstop=2 | 
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
" If you need more granularity; the plugin ftypes that will allow you to have
" a separate file for each filetype you want to maintain settings for.
let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Flag extraneous whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Syntax highlighting
let python_highlight_all=1
syntax on

