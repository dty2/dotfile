"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"            ██╗  ██╗██╗   ██╗███╗   ██╗████████╗███████╗██████╗              "
"            ██║  ██║██║   ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗             "
"            ███████║██║   ██║██╔██╗ ██║   ██║   █████╗  ██████╔╝             "
"            ██╔══██║██║   ██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗             "
"            ██║  ██║╚██████╔╝██║ ╚████║   ██║   ███████╗██║  ██║             "
"            ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝             "
"                                                                             "
"                            / \  //\                                         "
"             |\___/|      /   \//  \\                                        "
"             /0  0  \__  /    //  | \ \                                      "
"            /     /  \/_/    //   |  \  \                                    "
"            @_^_@'/   \/_   //    |   \   \                                  "
"            //_^_/     \/_ //     |    \    \                                "
"         ( //) |        \///      |     \     \                              "
"       ( / /) _|_ /   )  //       |      \     _\                            "
"     ( // /) '/,_ _ _/  ( ; -.    |    _ _\.-~        .-~~~^-.               "
"   (( / / )) ,-{        _      `-.|.-~-.           .~         `.             "
"  (( // / ))  '/\      /                 ~-. _ .-~      .-~^-.  \            "
"  (( /// ))      `.   {            }                   /      \  \           "
"   (( / ))     .----~-.\        \-'                 .~         \  `. \^-.    "
"              ///.----..>        \             _ -~             `.  ^-`  ^-_ "
"                ///-._ _ _ _ _ _ _}^ - - - - ~                     ~-- ,.-~  "
"                                                                   /.-~      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    
"------------"
"  平台设置  "
"------------"
" Debain branch
"let g:plug_url_format = 'git@github.com:%s.git'
"call plug#begin('~/.vim/plugged')
"Plug 'tpope/vim-surround'
"Plug 'majutsushi/tagbar'
"Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'easymotion/vim-easymotion'
"Plug 'morhetz/gruvbox'
"Plug 'mg979/vim-visual-multi'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"call plug#end()

" WSL2
" 开启剪贴板
"let s:clip = '/mnt/c/Windows/System32/clip.exe'
"if executable(s:clip)
"    augroup WSLYank
"        autocmd!
"        autocmd TextYankPost * if v:event.operator ==# 'y' | ca    ll system(s:clip, @0) | endif
"    augroup END
"endif
"```

" arch
packadd coc.nvim

"--------"
"  设置  "
"--------"
syntax on
filetype on

set number
set relativenumber

set wildmenu
set showcmd
set title

set scrolloff=5
set backspace=indent,eol,start
set laststatus=2

set hlsearch
set cursorline
set cursorcolumn

set wrap
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"光标保持在上次退出的位置
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

"--------"
"  美化  "
"--------"
colorscheme gruvbox
set background=dark

"--------"
"  映射  "
"--------"
let mapleader= ' '
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>t :vertical terminal<CR>
nnoremap <leader><CR> :nohlsearch<CR>

nnoremap n nzz
nnoremap N nzz
nnoremap ; :
nnoremap R :source $MYVIMRC<CR>

"split window 
nnoremap sl :set splitright<CR>:vsplit<CR>

"change split window size
nnoremap <leader>sh :vertical resize -5<CR>
nnoremap <leader>sl :vertical resize +5<CR>

"move cursor between split window
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"-------------"
"   插件设置  "
"-------------"

" nerd tree
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 40
let NERDTreeShowHidden = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
let g:airline_theme="gruvbox" 
endif

" tagbar
nnoremap <leader>m :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_width = 30
let g:tagbar_autoclose = 1

" easymotion
map <Leader><leader> <Plug>(easymotion-s)

" visual-multi
let g:VM_theme = 'iceblue'
let g:EasyMotion_leader_key = '\'
let g:VM_maps = {}
let g:VM_maps['Add Cursor Up'] = '<C-k>'
let g:VM_maps['Add Cursor Down'] = '<C-j>'
