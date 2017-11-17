execute pathogen#infect()

" nerdtree
map <C-n> :NERDTreeToggle<CR>

if has("syntax")
  syntax on
endif

filetype plugin indent on

colorscheme termschool

" nerdtree
map <C-n> :NERDTreeToggle<CR>

set number
set relativenumber

set showcmd

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set hidden

set noswapfile

let mapleader = " "

map <S-Tab> gT
map <Tab> gt
map <Esc>b :bprevious<CR>
map <Esc>f :bnext<CR>

" split line
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>$a

" unfold everything
nnoremap <silent> <leader>zo mzggvGzO<CR>'z:echo('Unfolded all folds ')<Esc>
nnoremap <silent> <leader>zc mzggvGzC<CR>'z:echo('Folded all folds ')<Esc>

nnoremap <silent> <leader>zO mzggvGzO<CR>'z:echo('Unfolded all folds ')<Esc>
nnoremap <silent> <leader>zC mzggvGzC<CR>'z:echo('Folded all folds ')<Esc>

" spellcheck
:map <leader>sc :setlocal spell! spelllang=en_us<CR>

" edit after jumping to end of word
nnoremap <silent> <leader>e ea
nnoremap <silent> <leader>E Ea

" swap carrot and octothorp
nnoremap # ^
nnoremap ^ #

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

" ctrlp with tabs instead of buffers
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
