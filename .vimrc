set number
syntax on
set bs=2
colorscheme zellner
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {{ }} 
filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G
set ts=4
set sw=4
