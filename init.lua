-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Disable pyright diagnostics
require("lspconfig").pyright.setup({
  capabilities = capabilities,
  handlers = {
    ["textDocument/publishDiagnostics"] = function() end,
  },
})

-- Set NeoTree to open on the right
require("neo-tree").setup({
  window = {
    position = "right",
  },
})
