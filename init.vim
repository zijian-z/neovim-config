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
"" 记忆上一次编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"" 括号自动补全
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT><CR><Esc>ko

"" 插入模式下的键位设置
inoremap jj <Esc>:w!<CR>
inoremap <Esc> <Esc>:w!<CR>
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
noremap <S-j> :bp<CR>
noremap <S-k> :bn<CR>
"" 关闭当前buffer
nnoremap <Space>c :bp\|bd #<CR>
"" 执行外部命令
noremap <Space>r <Esc>:w!<CR>:!<Space>


"""""""""""""""""""""""""""""""""""""""
"" 插件设置
"""""""""""""""""""""""""""""""""""""""
"" 主题 
set background=light
colorscheme PaperColor
"" 文件树
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"" fzf模糊查找
nnoremap <C-f> :Ag<CR>
nnoremap <Space>f :Files<CR>
"" lsp快捷键
nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>


"""""""""""""""""""""""""""""""""""""""
"" 加载lua配置
"""""""""""""""""""""""""""""""""""""""
lua require('init')
