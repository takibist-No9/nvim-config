return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<c-k>", mode = "i", false }
      keys[#keys + 1] =
        { "<c-s>", vim.lsp.buf.signature_help, mode = "i", desc = "Signature Help", has = "signatureHelp" }
    end,
  },
}
