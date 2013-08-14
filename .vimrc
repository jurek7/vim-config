set nocompatible
filetype plugin indent on

if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
"  NeoBundleFetch 'Shougo/neobundle.vim'
"

NeoBundle 'wincent/Command-T'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-pathogen'
NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'solarized/vim-colors-solarized'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundleCheck


let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

syntax on
filetype plugin indent on

set ttymouse=xterm

set hidden " allow leave unsaved buffer
set number " lines numbers 
set incsearch " search while typing
set hlsearch
set ai " auto indent
set ts=2
set shiftwidth=2
set expandtab " use spaces instead tabs
set ignorecase
set smartcase

set t_Co=256                        " force vim to use 256 colors
let g:solarized_termcolors=256      " use solarized 256 fallback
let g:solarized_contrast='high'
set background=dark
colorscheme solarized

" hi IndentGuidesOdd  ctermbg=black
" hi IndentGuidesEven ctermbg=darkgrey
"
hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey

imap <S-Tab> <C-o><<
map <S-Tab> <<
map <Tab> >>
imap <C-d> <C-o>"_dd
nmap <C-d> "_dd

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

imap <C-J> <C-o>J

nnoremap <leader>q :bp<cr>:bd #<CR>

" C-a is a word whitespace separated
nmap <C-f> /<C-R><C-a> 
imap <C-f> <Esc>/<C-R><C-a>

set nowrap

set exrc " enable per-directory .vimrc files
set secure

" keep swap, and temp files outside working directory
set backupdir=/tmp
set directory=/tmp

imap <F2> <C-o>:w<CR>
nmap <F2> :w<CR>

imap <Home> <C-o>^
map <Home> ^

nmap <C-g>g :silent !git gui<CR>
imap <C-g>g <C-o>:silent !git gui<CR>

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

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

