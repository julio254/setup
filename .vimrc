cd C:\Users\julio
set clipboard=unnamed
set number
syntax on
set bs=2
colorscheme alduin
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {{ }} 
filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G
set ts=4
set sw=4

" windows command
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r && %:r.exe <CR>

" macOS command
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++11 % -o &:r && ./%:r <CR>


call plug#begin()

  Plug 'flazz/vim-colorschemes'
  
call plug#end()
