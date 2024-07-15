-- ~/.config/nvim/lua/custom/lspconfig.lua

-- Create a local function to setup Pyright with the desired capabilities
local function setup_pyright()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }

  require("lspconfig")["pyright"].setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
      -- Optional: Add your custom on_attach function here
    end,
  })
end

-- Call the setup function
setup_pyright()
