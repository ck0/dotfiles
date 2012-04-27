" *essentials* {{{1
Arpeggio noremap io :sp ~/.vimrc<CR>:vs ~/.vim/arpeggio_remaps.vim<CR>
Arpeggio inoremap jk <Esc>
Arpeggio noremap jf :w<CR>
Arpeggio noremap jkl :NERDTreeToggle<CR>
" thanks to MPB keyboard failing at rollover
" Arpeggio noremap jkl; :NERDTreeToggle<CR>
"}}}

" *window movement* {{{1
Arpeggio noremap wj <C-w>j
Arpeggio noremap wk <C-w>k
Arpeggio noremap wl <C-w>l
Arpeggio noremap wh <C-w>h
Arpeggio noremap WJ <C-w>J
Arpeggio noremap WK <C-w>K
Arpeggio noremap WL <C-w>L
Arpeggio noremap WH <C-w>H
"}}}

" *plugins* {{{1
Arpeggio noremap ei :Gstatus<CR>
Arpeggio noremap asdf :CommandT<CR>
Arpeggio noremap bui :CommandTBuffer<CR>
"}}}

" *etc* {{{1
Arpeggio noremap no :noh<CR>
Arpeggio noremap we :set filetype=
Arpeggio noremap uw viwu
Arpeggio noremap UW viwU
"}}}

" vim:foldmethod=marker
" vim:noet:sw=2 ts=2
