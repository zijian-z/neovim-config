return require('packer').startup(function()
  use "wbthomason/packer.nvim"

  -- 主题
  use 'morhetz/gruvbox'
  use 'NLKNguyen/papercolor-theme'

  -- 模糊搜索
  use 'junegunn/fzf.vim'

  -- 代码提示和自动补全
  use 'neovim/nvim-lspconfig' 
  use 'hrsh7th/nvim-cmp' 
  use 'hrsh7th/cmp-nvim-lsp' 
  use 'saadparwaiz1/cmp_luasnip' 
  use 'L3MON4D3/LuaSnip' 

  -- 代码高亮
  use 'nvim-treesitter/nvim-treesitter'

  -- 文件树和上下状态栏
  use 'preservim/nerdtree'
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
end)
