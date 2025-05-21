require("nvim-autopairs").setup {}
require("nvim-tree").setup {}
require("mason").setup()
require("mason-lspconfig").setup {
  automatic_enable = true
}
require("nvim-treesitter.configs").setup {
  auto_install = true,
  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
  },

}
require("blink.cmp").setup {
  keymap = {
    -- set to 'none' to disable the 'default' preset
    preset = 'none',
    ['<Tab>'] = { 'select_next', 'fallback' },
    ['<S-Tab>'] = { 'select_prev', 'fallback' },
  }
}
