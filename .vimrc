
:filetype plugin on
:syntax on
:filetype indent on

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Supertabs to help autocomplete with vimtex
Plugin 'ervandew/supertab'

" AutoComplete
Plugin 'Valloric/YouCompleteMe'


" Useful auto complete scrips engine
Plugin 'SirVer/ultisnips'

" VimTex
Plugin 'lervag/vimtex'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Adss info bar and other details to the boring window
Plugin 'vim-airline/vim-airline'


" For tree view
Plugin 'scrooloose/nerdtree'

" Universal search
Plugin 'kien/ctrlp.vim'

" ColorScheme
Plugin 'altercation/vim-colors-solarized'

" Auto pair
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on 

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
"set ignorecase         " Do case insensitive matching
"set smartcase          " Do smart case matching
"set incsearch          " Incremental search
"set autowrite          " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a            " Enable mouse usage (all modes)



" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

let g:tex_flavor='latex'


set lazyredraw "Vim draws screen only if needed
set incsearch           " search as characters are entered
set hlsearch            " highlight matches


" For retention of copy content to clipboard
autocmd VimLeave * call system("xsel -ib", getreg('+'))

" Vimtex compilation
map <f2> :w<cr><leader>ll

" Visible line wrap
noremap j gj
noremap k gk

" Use the mapping to close scratch windows
"
nmap <C-d> : <C-w><C-j><C-w>q

" For navigating between splits
" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnorema <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Removes Highlight
nnoremap <CR> :noh<CR><CR>
" Indent Code
nnoremap <C-A-l> gg=G

" Nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" Clear blacklist files so that auto complete will work in any file

let g:ycm_filetype_blacklist = {}

" For showing buffer tabs
let g:airline#extensions#tabline#enabled = 1

:set  dictionary+=/usr/share/dict/american-english
let g:SuperTabDefaultCompletionType = "context"

" TO igore pyc files
"
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_max_depth=10
let g:ctrlp_max_files=0

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Solarized Options
set t_Co=256
syntax enable
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

let g:BASH_AuthorName   = 'Rohit Suratekar'
let g:BASH_Email        = 'rohitsuratekar@gmail.com'
let g:BASH_Company      = 'IIMCB'

