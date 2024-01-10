return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
    local config = require("catppuccin")
    config.setup({
          flavour = "mocha", 
          transparent_background
                  = false,
          color_overrides = {
            mocha = {
              base   = "#282C34",
            }
          }
    })
    vim.cmd.colorscheme("catppuccin")
  end
}
