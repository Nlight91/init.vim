set tabstop=4
set shiftwidth=4
set expandtab

let mapleader = ","
let @s = "Oc()hpl%"


"inserts ', ' between words inside selection
vnoremap <leader>, :s/\%V \+/, /g

" encloses the selection with ()
vnoremap <leader>( c()hpl%
" encloses the selection with {}
vnoremap <leader>{ c{}hpl%
" encloses the selection with <>
vnoremap <leader>< c<>hpl%
" encloses the selection with []
vnoremap <leader>[ c[]hpl%
" encloses the selection with ""
nnoremap <leader>m ciw""hplw
" encloses the selection with ''
nnoremap <leader>r ciw''hplw

" beautify code
nnoremap <leader>b :'<,'>s/\v *([-+*/%!&><,;=\|]+) */ \1 /g

" terminal escape
tnoremap <Esc> <C-\><C-n>

" navigating windows with alt+[h|j|k|l]
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" navigating throug tabs with ctrl+[h|l]
nnoremap <C-h> gT
nnoremap <C-l> gt

" moving tabs with Ctrl+[h|l]
nnoremap <C-y> :tabmove -
nnoremap <C-o> :tabmove -

" create new tab
nnoremap <leader>tn :tabnew
nnoremap <leader>tc :tabclose

" 

" fast down (Ctrl+d) to Ctrl+i
nnoremap <C-i> <C-d>zz
nnoremap <C-u> <C-u>zz


let g:python3_host_prog = 'c:\Program Files\Python36\python'



call plug#begin('c:/Neovim/nvim/plugins')
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'tpope/vim-fugitive'
call plug#end()
let g:deoplete#enable_ar_strartup = 1
