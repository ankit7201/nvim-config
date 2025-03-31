return {
  "mfussenegger/nvim-dap",
  init = function()
    local keymap = vim.keymap
    keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Add breakpoint at line" })
    keymap.set("n", "<leader>dus", function()
      local widgets = require("dap.ui.widgets")
      local sidebar = widgets.sidebar(widgets.scopes)
      sidebar.open()
    end, { desc = "Open debugging sidebar" })
  end,
}
