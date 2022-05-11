require('plugins')
require('lsp').config()
require('autocomplete').config()
require('bufferline').setup{}
require('lualine').setup()
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
