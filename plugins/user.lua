return {
 { "andweeb/presence.nvim", lazy=false}, 
 { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
 { "ThePrimeagen/vim-be-good", cmd = { "VimBeGood" }},
 {
   "zbirenbaum/copilot.lua",
   cmd = "Copilot",
   event = "InsertEnter",
   config = function()
     require("copilot").setup(require("user.plugins.configs.copilot"))
   end,
 }
}
