return {

  {
    'f-person/git-blame.nvim',
    event = 'VeryLazy',
    config = function()
      vim.g.gitblame_enabled = 1 -- enable by default
      vim.g.gitblame_display_virtual_text = 1 -- optional: disable inline text
      -- Toggle git blame with :GitBlameToggle
    end,
  },
}
