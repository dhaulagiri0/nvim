return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
  local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "haskell",
        "python",
        "javascript",
        "typescript",
        "css",
        "html",
      },
      autotag = {
        enable = true,
      },
      hightlight = { enable = true },
    })
  end

}



