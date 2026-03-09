-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git",
                              "clone", 
                              "--filter=blob:none", 
                              "--branch=stable", 
                              lazyrepo, 
                              lazypath 
                          })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
    'ThePrimeagen/vim-be-good',

-----------------------------------------------------------------------------------------
    {'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
------------------------------------------------------------------------------------------
    {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
         },
     },
    },
---------------------------------------------------------------------------------------------
    { 'nvim-mini/mini.nvim', version = false },
--------------------------------------------------------------------------------------------
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
--------------------------------------------------------------------------------------------
     {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
      end
    },
--------------------------------------------------------------------------------------------
})


-------- SETTING THEME ---------------
-- themes: gruvbox-material, catppuccin-frappe/mocha/latte/macchiato
local theme = 'catppuccin-mocha'
vim.cmd.colorscheme(theme)


require('lualine').setup {
          options = {
            theme = theme 
          }
        }
