execute pathogen#infect()

if has("syntax")
  syntax on
endif

filetype plugin indent on

colorscheme Tomorrow-Night-Bright

" nerdtree
map <C-n> :NERDTreeToggle<CR>
"let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeMapActivateNode='v'
" renders directories inaccessible 
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrows=0
let NERDTreeDirArrows=0
let NERDTreeDirArrowExpandable='+'
let NERDTreeDirArrowCollapsible='~'
" remember :tabe 



set number
set relativenumber

set showcmd

set hlsearch
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set hidden

set noswapfile

set clipboard^=unnamedplus
let mapleader = " "

map <S-Tab> gT
map <Tab> gt


" split line          
" nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>$a
nnoremap S i<CR><ESC>-:silent! s/\v +$//<cr>:noh<cr>$a

" unfold everything
nnoremap <silent> <leader>zo mzggvGzO<CR>'z:echo('Unfolded all folds ')<Esc>
nnoremap <silent> <leader>zc mzggvGzC<CR>'z:echo('Folded all folds ')<Esc>

nnoremap <silent> <leader>zO mzggvGzO<CR>'z:echo('Unfolded all folds ')<Esc>
nnoremap <silent> <leader>zC mzggvGzC<CR>'z:echo('Folded all folds ')<Esc>

" spellcheck
:map <leader>sc :setlocal spell! spelllang=en_us<CR>
nnoremap [z [s
nnoremap ]z ]s
nnoremap z[ [s
nnoremap z] ]s

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
" let g:ctrlp_prompt_mappings = {
"     \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
"     \ 'AcceptSelection("t")': ['<cr>'],
"     \ }


" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
imap <C-v> <C-o>"+P

map <A-Left> :bprev<CR>
map <A-Right> :bnext<CR>
map <Esc>[1;3D :bprev<CR>
map <Esc>[1;3C :bnext<CR>



" Creating a mapping to turn it on and off:
map <leader>r :RainbowLevelsToggle<cr>

" Or automatically turning it on for certain file types:
" au FileType html,javascript,python,php,xml,yaml :RainbowLevelsOn
" let g:rainbow_levels = [
"     \{'ctermfg': 121, 'guifg': '#65c254'},
"     \{'ctermfg': 81,  'guifg': '#8fbfdc'},
"     \{'ctermfg': 11,  'guifg': '#8197bf'},
"     \{'ctermfg': 14,  'guifg': '#c6b6ee'},
"     \{'ctermfg': 13,  'guifg': '#cf6a4c'},
"     \{'ctermfg': 121, 'guifg': '#ffb964'},
"     \{'ctermfg': 7,   'guifg': '#e8e8d3'},
"     \{'ctermfg': 14,  'guifg': '#888888'}]

" <nickspoon> My most useful one-liner is this, to repeat the previous change as if it was an :s 
" nnoremap <leader>. :let @/ = @"<cr>/<cr>cgn<c-r>.<esc>
nnoremap <leader>. /<c-r>"<cr>cgn<c-r>.<esc>

" lightline
set laststatus=2
