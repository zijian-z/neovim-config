""""""""""""""""""""""""""""""""""""""""
"" 基础设置
""""""""""""""""""""""""""""""""""""""""
"" let mapleader = ";"
set relativenumber
set noswapfile
map 0 ^
set t_Co=256
syntax on 
filetype plugin on
set tabstop=4 shiftwidth=4 softtabstop=4 
set expandtab autoindent

"" 括号自动补全
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap < <><LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

"" 插入模式下的键位设置
inoremap jj <Esc>:w!<CR>
inoremap <C-j> <DOWN>
inoremap <C-k> <UP>
inoremap <C-h> <LEFT>
inoremap <C-l> <RIGHT>
inoremap <C-a> <Esc>0i
inoremap <C-e> <Esc>$i
inoremap <C-u> <Esc>ui

"" 普通模式下的键位设置
"" 在窗口间移动
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
"" 借助Shift在buffer间移动
noremap <A-1> :bp<CR>
noremap <A-2> :bn<CR>
"" 关闭当前buffer
nnoremap <Space>c :bp\|bd #<CR>
"" 执行外部命令
noremap <Space>r <Esc>:w!<CR>:!<Space>

"" 命令模式下的键位设置
"" 无权限保存时，提示输入密码
cmap w!! w !sudo tee >/dev/null %

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
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


"""""""""""""""""""""""""""""""""""""""
"" 加载lua配置
"""""""""""""""""""""""""""""""""""""""
lua require('init')
