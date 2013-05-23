runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

set ttymouse=xterm

set hidden " allow leave unsaved buffer
set number " lines numbers 
set nocompatible
set incsearch " search while typing
set hlsearch
set ai " auto indent
set ts=2
set shiftwidth=2
set expandtab " use spaces instead tabs
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
nmap <C-PageUp> :bp<CR>
nmap <C-PageDown> :bn<CR>

set nowrap

set exrc " enable per-directory .vimrc files
set secure

" keep swap, and temp files outside working directory
set backupdir=/tmp
set directory=/tmp

imap <F2> <C-o>:w<CR>
nmap <F2> :w<CR>

imap <C-f> <C-o>/<C-R><C-W>
map <C-f> /<C-R><C-W>

if &term =~ '^screen' && exists('$TMUX')
    " Mouse mode
    set mouse+=a
    set ttymouse=xterm2

    " tmux sends xterm-style keys when xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
    execute "set <xHome>=\e[1;*H"
    execute "set <xEnd>=\e[1;*F"
    execute "set <Insert>=\e[2;*~"
    execute "set <Delete>=\e[3;*~"
    execute "set <PageUp>=\e[5;*~"
    execute "set <PageDown>=\e[6;*~"
    execute "set <xF1>=\e[1;*P"
    execute "set <xF2>=\e[1;*Q"
    execute "set <xF3>=\e[1;*R"
    execute "set <xF4>=\e[1;*S"
    execute "set <F5>=\e[15;*~"
    execute "set <F6>=\e[17;*~"
    execute "set <F7>=\e[18;*~"
    execute "set <F8>=\e[19;*~"
    execute "set <F9>=\e[20;*~"
    execute "set <F10>=\e[21;*~"
    execute "set <F11>=\e[23;*~"
    execute "set <F12>=\e[24;*~"
endif

