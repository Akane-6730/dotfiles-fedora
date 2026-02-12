return {
  {
    "sainnhe/sonokai",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- vim.g.sonokai_style = "andromeda" -- default value is 'default'
      vim.cmd.colorscheme("sonokai")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
}
