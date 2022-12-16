call plug#begin('~/.vim/plugged')
" dracula主题
Plug 'dracula/vim', { 'as': 'dracula' }
" 文件管理器插件
Plug 'preservim/nerdtree' 
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'ybian/smartim'
Plug 'machakann/vim-highlightedyank'

call plug#end() 

set nobackup
set hlsearch
let g:highlightedyank_highlight_duration = 300

nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>g :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

nnoremap L $
vnoremap H ^
nnoremap H ^
vnoremap L $
nnoremap ; :

" 使用系统剪切版 -> Vim
set clipboard=unnamedplus    
" Vim -> 系统剪切版
set clipboard=unnamed     
colorscheme dracula
set number
set relativenumber
let g:smartim_default = 'com.apple.keylayout.ABC'
