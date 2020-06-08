cd C:\Users\julio\programs
set clipboard=unnamed
set number
syntax on
set bs=2
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {{ }}
filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G
autocmd BufNewFile,BufRead * setlocal formatoptions+=cqn
set ts=4
set sw=4
colorscheme alduin

call plug#begin()

	Plug 'flazz/vim-colorschemes'
	Plug 'itchyny/lightline.vim' 
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'preservim/nerdtree'
	Plug 'dense-analysis/ale'	

call plug#end()

"Compile and Run C++ code in VIM by pressing F9 (have to include directory(look at line 1))
" windows command
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r && %:r.exe <CR>

" macOS command
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++11 % -o &:r && ./%:r <CR>

