-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Disable pyright diagnostics
require("lspconfig").pyright.setup({
  capabilities = capabilities,
  handlers = {
    ["textDocument/publishDiagnostics"] = function() end,
  },
})

-- Set NeoTree to open up with <leader>e
vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })

-- Set NeoTree to open on the right
require("neo-tree").setup({
  window = {
    position = "right",
  },
})

-- Set Copilot Mappings
require("copilot").setup({
  panel = {
    keymap = {
      accept = "<CR>",
    },
  },
})

--Set Telescope Live Grepping
vim.api.nvim_set_keymap("n", "<leader>fd", [[<cmd>Telescope live_grep<CR>]], { noremap = true, silent = true })
