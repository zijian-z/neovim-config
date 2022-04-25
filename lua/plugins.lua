return require('packer').startup(function()
  use "wbthomason/packer.nvim" -- 插件管理
  use 'morhetz/gruvbox' -- 主题

  use 'neovim/nvim-lspconfig' 
  use 'hrsh7th/nvim-cmp' 
  use 'hrsh7th/cmp-nvim-lsp' 
  use 'saadparwaiz1/cmp_luasnip' 
  use 'L3MON4D3/LuaSnip' 

  use 'preservim/nerdtree'
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
end)
