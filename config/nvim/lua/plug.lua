require("nvim-autopairs").setup {}
require("nvim-tree").setup {}
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
require("mason").setup()
require("mason-lspconfig").setup {
  automatic_enable = true
}
require("blink.cmp").setup {
  keymap = {
    -- set to 'none' to disable the 'default' preset
    preset = 'none',
    ['<Tab>'] = { 'select_next', 'fallback' },
    ['<S-Tab>'] = { 'select_prev', 'fallback' },
  },
  completion = {
    list = {
      selection = { preselect = false, auto_insert = true }
    },
    documentation = { auto_show = true, auto_show_delay_ms = 500 },
    ghost_text = { enabled = true },
  },
}

require("conform").setup({
  formatters_by_ft = {
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
    -- Conform will run the first available formatter
    typescript = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})
