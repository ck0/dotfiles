set nocompatible

" *vundle-managed plugins* {{{
filetype off " required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" yo dawg
Bundle 'gmarik/vundle'

" bundles that aren't vundle
Bundle 'ervandew/supertab.git'

Bundle 'godlygeek/tabular.git'

Bundle 'kana/vim-arpeggio.git'

Bundle 'michaeljsmith/vim-indent-object.git'

Bundle 'msanders/snipmate.vim.git'

Bundle 'scrooloose/nerdcommenter.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic.git'

Bundle 'tpope/vim-abolish.git'
Bundle 'tpope/vim-afterimage.git'
Bundle 'tpope/vim-eunuch.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-unimpaired.git'

Bundle 'wincent/Command-T'
" }}}

filetype plugin indent on

set number
set ruler

set ignorecase
set smartcase

set hlsearch
set incsearch

set smarttab
set autoindent
set smartindent

set mouse=a
set ttymouse=xterm2
set clipboard=unnamedplus

set backspace=indent,eol,start

set scrolloff=2
set sidescrolloff=2

set autoread

set nowritebackup               " don't bother making backups
set nobackup                    " ...let alone saving them
set directory=$HOME/.vim/swap// " stop littering .sw*s

set undofile                  " persistent undo!
set undodir=$HOME/.vim/undo//

set magic " less escaping

set listchars=tab:>-,trail:*
set list

set virtualedit=block

set hidden

set noerrorbells
set novisualbell

set wildmenu                            " get wild
set wildignorecase                      " like it sounds
set wildmode=longest:full               " prefix matching for wildmenu
set completeopt+=longest                " insert up to the matched prefix
set wildignore+=*.class,*.o,*.pyc,*.git " unlikely to want to match these


" *leader- bindings (mostly plugins)* {{{2
let mapleader = ","
let g:mapleader = ","

" *plugin options* {{{1 
" *Command-T* {{{2 
let g:CommandTMaxHeight=20
let g:CommandTScanDotDirectories=1
let g:CommandTCancelMap=['<Esc>', '<C-c>']
" }}}

" *Supertab* {{{2 
let g:SuperTabDefaultCompletionType = "<C-x><C-o>"
let g:SuperTabDefaultCompletionType = "context"
" }}}
" }}}

" *remaps* {{{1 
noremap <Space> i

" because there's no setting verymagic
cnoremap s/ s/\v

" bulldoze overprivileged files
cnoremap W w !sudo tee % > /dev/null

" stop it, you're not using eclipse
inoremap <C-Space> :!sl

nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>
" }}}
" }}}

" *statusline* {{{1 
"see :h fugitive-statusline
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set statusline+=%{SyntasticStatuslineFlag()}

set laststatus=2 " always show the statusline
" }}}

" *arpeggio mappings* {{{1
call arpeggio#load()

" *essentials* {{{2
Arpeggio inoremap jk  <Esc>
Arpeggio noremap jf :w
Arpeggio noremap jkl; :NERDTreeToggle
"}}}

" *window movement* {{{2
Arpeggio noremap wj j
Arpeggio noremap wk k
Arpeggio noremap wl l
Arpeggio noremap wh h
Arpeggio noremap WJ J
Arpeggio noremap WK K
Arpeggio noremap WL L
Arpeggio noremap WH H
"}}}

" *plugins* {{{2
Arpeggio noremap ei :Gstatus
Arpeggio noremap asdf :CommandT
Arpeggio noremap bui :CommandTBuffer
"}}}

" *etc* {{{2
Arpeggio noremap no :noh
Arpeggio noremap uw viwu
Arpeggio noremap UW viwU
"}}}
"}}}

" vim: foldmethod=marker

