require("nvim-autopairs").setup {}
require("nvim-tree").setup {}
require("mason").setup()
require("mason-lspconfig").setup {
  automatic_enable = true
}
require("nvim-treesitter.configs").setup {
  auto_install = true
}
require("blink.cmp").setup {
  keymap = {
    -- set to 'none' to disable the 'default' preset
    preset = 'none',
    ['<Tab>'] = { 'select_next', 'fallback' },
    ['<S-Tab>'] = { 'select_prev', 'fallback' },
  }
}
