call plug#begin('~/.vim/plugged')
" dracula主题
Plug 'dracula/vim', { 'as': 'dracula' }
" 文件管理器插件
Plug 'preservim/nerdtree' 
" 主题插件(状态栏显示)
Plug 'Bakudankun/qline.vim'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
call plug#end() 

set nobackup
" 前缀指令🛂
nnoremap <SPACE> <Nop>
let mapleader = " "
inoremap jk <esc>

nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>g :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
noremap H ^
noremap L $


" 使用系统剪切版 -> Vim
set clipboard=unnamedplus    
" Vim -> 系统剪切版
set clipboard=unnamed     
colorscheme dracula
set number
set relativenumber
 
