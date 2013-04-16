runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

set hidden " allow leave unsaved buffer
set number " lines numbers 
set nocompatible
set incsearch " search while typing
set hlsearch
set ai " auto indent
set ts=2
set shiftwidth=2
set ignorecase
set smartcase

set background=dark

imap <S-Tab> <C-o><<
imap <C-d> <C-o>dd

map <C-n> :NERDTreeToggle<CR>
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

let g:NERDTreeDirArrows=0 " https://github.com/scrooloose/nerdtree/issues/108
autocmd vimenter * NERDTree " open nerd tree at start

vnoremap > >gv " do not leave visual mode while indent / reindent 
vnoremap < <gv
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

inoremap <A-Up> <C-o>:m .-2<CR>
inoremap <A-Down> <C-o>:m .+1<CR>

inoremap <C-PageUp> <C-o>:bp<CR>
inoremap <C-PageDown> <C-o>:bn<CR>
