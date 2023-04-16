call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:rehash256 = 1

set termguicolors
let g:gruvbox_italic=1
colorscheme molokai
hi Normal guibg=NONE
hi Normal ctermbg=NONE
set modifiable

set grepprg=rg\ --vimgrep\ --follow

nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-f> :Rg <C-R><C-W><CR>

set number
