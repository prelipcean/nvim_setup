return {
  {
    "neovim/nvim-lspconfig",
    name = "nvim-lspconfig",

    config = function()
      --local lspconfig = require('lspconfig')
      --lspconfig.clangd.setup({})
      --lspconfig.lua_ls.setup({})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

      vim.api.nvim_set_keymap(
        "n",
        "<leader>do",
        "<cmd>lua vim.diagnostic.open_float()<CR>",
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>d[",
        "<cmd>lua vim.diagnostic.goto_prev()<CR>",
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>d]",
        "<cmd>lua vim.diagnostic.goto_next()<CR>",
        { noremap = true, silent = true }
      )
    end,
  },
  {
    "williamboman/mason.nvim",
    dependencies = { "nvim-lspconfig" },
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd" },
      })

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      })
    end,
  },
}
