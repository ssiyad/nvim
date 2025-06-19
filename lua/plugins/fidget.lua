-- Extensible UI for Neovim notifications and LSP progress messages.
-- https://github.com/j-hui/fidget.nvim
return {
  'j-hui/fidget.nvim',
  opts = {
    notification = {
      override_vim_notify = true,
    },
  },
}
