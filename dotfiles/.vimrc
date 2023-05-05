call plug#begin('~/.vim/plugged')

" Vim Plug Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf.vim'
Plug 'cjuniet/clang-format.vim'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Maybe helps with Tmux colour integration?
let g:rehash256 = 1

" Sets Colour scheme
let g:gruvbox_italic=1
colorscheme molokai
hi Normal guibg=NONE
hi Normal ctermbg=NONE
set modifiable

" Allows for grepping in vim
set grepprg=rg\ --vimgrep\ --smartcase\ --follow

" Preview highlighting with bat
let g:fzf_preview_command = 'batcat --color=always --plain {-1}'

" Maps Ctrl+p to fuzzy file search
nnoremap <silent> <C-p> :GFiles<CR>
" Maps Ctrl+f to fuzzy word search
nnoremap <silent> <C-f> :Rg <C-R><C-W><CR>
" Maps Ctrl+k to git blame
nnoremap <silent> <C-k> :Git blame <CR>
" Maps Ctrl+m to clang format
nnoremap <silent> <C-m> :ClangFormat <CR>

" Sets line numebrs to be on
set number

" Set backspace so it works
set backspace=2

" Sets tabs to be a reasonable size
set tabstop=4
set smarttab
set shiftwidth=4

" Sets highlighting on search
set hlsearch
