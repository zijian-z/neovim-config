""""""""""""""""""""""""""""""""""""""""
"" 基础设置
""""""""""""""""""""""""""""""""""""""""
let mapleader = ";"
set relativenumber
map 0 ^
set t_Co=256
syntax on 
set tabstop=4 shiftwidth=4 softtabstop=4 
set expandtab autoindent

"" 更快地在窗口间移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"" 关掉buffer
cnoremap bd bp\|bd #<CR>
"" 在buffer间移动
nnoremap <leader>1 :bp<CR>
nnoremap <leader>2 :bn<CR>
"" 主题 
colorscheme gruvbox
"" 文件树
cnoremap tt NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"""""""""""""""""""""""""""""""""""""""
"" 加载lua配置
"""""""""""""""""""""""""""""""""""""""
lua require('init')
