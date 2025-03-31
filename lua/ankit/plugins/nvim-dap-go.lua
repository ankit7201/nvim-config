return {
  "leoluz/nvim-dap-go",
  ft = "go",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function(_, opts)
    require("dap-go").setup(opts)

    local keymap = vim.keymap

    keymap.set("n", "<leader>dgt", function()
      require("dap-go").debug_test()
    end, { desc = "Debug go test" })

    keymap.set("n", "<leader>dgl", function()
      require("dap-go").debug_last()
    end, { desc = "Debug last go test" })
  end,
}
