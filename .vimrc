nnoremap <C-d> }
nnoremap <C-u> {
nnoremap } <C-d>
nnoremap { <C-u>

" Also for visual mode (so it works when selecting)
vnoremap <C-d> }
vnoremap <C-u> {
vnoremap } <C-d>
vnoremap { <C-u>

call plug#begin('~/.vim/plugged')
Plug 'psliwka/vim-smoothie'

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'
Plug 'doums/darcula'


" Autocompletion & LSP (the big one)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting
Plug 'sheerun/vim-polyglot'           " covers most languages


" Language-specific
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }   " Go
Plug 'jparise/vim-graphql'            " GraphQL
Plug 'ekalinin/dockerfile.vim'        " Dockerfile
Plug 'towolf/vim-helm'                " Kubernetes Helm charts

" Useful extras
Plug 'preservim/nerdtree'             " file explorer
Plug 'junegunn/fzf.vim'               " fuzzy finder

call plug#end()

set termguicolors
syntax on
colorscheme slate
set background=dark
set cursorline
set incsearch
set hlsearch

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Enter to confirm
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

:set norelativenumber

set mouse=a
