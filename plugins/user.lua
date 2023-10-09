return {
 { "andweeb/presence.nvim", lazy=false},
 {
  "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
 },
 { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
 { "ThePrimeagen/vim-be-good", cmd = { "VimBeGood" }},
 {
   "ThePrimeagen/refactoring.nvim",
    dependencies = {
     "nvim-lua/plenary.nvim",
     "nvim-treesitter/nvim-treesitter",
    },
    cmd= "Refactor",
    config = function()
      require("refactoring").setup()
    end,
 },
 {
   "zbirenbaum/copilot.lua",
   cmd = "Copilot",
   event = "InsertEnter",
   config = function()
     require("copilot").setup(require("user.plugins.configs.copilot"))
   end,
 }
}
