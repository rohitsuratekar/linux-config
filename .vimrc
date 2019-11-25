
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

" For python lint check
Plugin 'nvie/vim-flake8'

" For tree view
Plugin 'scrooloose/nerdtree'

" Universal search
Plugin 'kien/ctrlp.vim'


call vundle#end()
filetype plugin indent on 


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
nnoremap <C-L> <C-W><C-L>
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
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
