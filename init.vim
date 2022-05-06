""""""""""""""""""""""""""""""""""""""""
"" 基础设置
""""""""""""""""""""""""""""""""""""""""
"" let mapleader = ";"
set relativenumber
map 0 ^
set t_Co=256
syntax on 
set tabstop=4 shiftwidth=4 softtabstop=4 
set expandtab autoindent

"" 插入模式下的键位设置
inoremap jj <Esc>:w!<CR>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap < <><LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

"" 普通模式下的键位设置
"" 在窗口间移动
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
"" 执行外部命令
noremap <Space>r <Esc>:w!<CR>:!<Space>
"" buffer
nnoremap <Space>d :bp\|bd #<CR>
nnoremap <Space>p :bp<CR>
nnoremap <Space>n :bn<CR>

"" 插件命令
"" fzf
nnoremap <C-f> :Ag<CR>
nnoremap ff :Files<CR>
nnoremap fh :Files ~/


"""""""""""""""""""""""""""""""""""""""
"" 插件设置
"""""""""""""""""""""""""""""""""""""""
"" 主题 
colorscheme gruvbox
"" 文件树
"" noremap tt NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


"""""""""""""""""""""""""""""""""""""""
"" 加载lua配置
"""""""""""""""""""""""""""""""""""""""
lua require('init')
