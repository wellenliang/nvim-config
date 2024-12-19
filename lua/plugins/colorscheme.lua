return {
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
  },

  {
    "Mofiqul/dracula.nvim",
  },

  {
    "joshdick/onedark.vim",
  },

  { "EdenEast/nightfox.nvim" },
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfly",
    },
  },
}
