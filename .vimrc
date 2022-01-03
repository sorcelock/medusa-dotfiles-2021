" Keymaps "
nnoremap <leader>ev :tabnew $MYVIMRC<CR>
nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap tn  :tabnew<Space>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap th  :tabfirst<CR>
nnoremap tl  :tablast<CR>
nnoremap tc  :tabclose<CR>
"nnoremap <leader>m  :NERDTreeToggle<CR>
nnoremap <F3>  :NERDTreeToggle<CR>
nnoremap <F2> :Tlist<CR><C-w>h
nnoremap <leader>vp  :vsplit<Space>
nnoremap <leader>hp  :split<Space>
nnoremap <leader>N  :set nu relativenumber<CR>
nnoremap <leader><leader>N  :set nonu norelativenumber<CR>
nnoremap <leader>M  :set mouse+=a<CR>
nnoremap <leader><leader>M  :set mouse-=a<CR>
nnoremap <leader><leader>date  :r!date +\%d\/\%m\/\%Y<CR>

" Plugins "
call plug#begin('~/.vim/plugged')

Plug 'dylanaraps/wal.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'junegunn/vim-emoji'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'yegappan/taglist'
" Plug 'arcticicestudio/nord-vim'
" Plug 'powerline/powerline'
" Plug 'ryanoasis/vim-webdevicons'
" Plug 'adelarsq/vim-devicons-emoji'
" Plug 'embark-theme/vim', { 'as': 'embark' }


call plug#end()


" Options "
set number relativenumber
set incsearch
syntax on

" Indent Settings "
set tabstop=4
set shiftwidth=4
" set expandtab
" One-Liner for above 3 Lines "
" set ts=2 sw=2 et "

" set mouse=a
" let g:powerline_pycmd="py3"

let g:NERDTreeWinPos="right"

colorscheme wal
" colorscheme nord
" colorscheme embark

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

set encoding=UTF-8

" autocmd BufWritePost *.c !gcc % -lm

autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

autocmd BufWritePost ~/.config/i3/config !i3-msg restart

" augroup emoji_complete
"   autocmd!
"   autocmd FileType markdown setlocal completefunc=emoji#complete
" augroup END
" 
" set completefunc=emoji#complete


