-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'andymass/vim-matchup',
    event = 'CursorMoved', -- lazy-load on cursor move
    config = function()
      -- Optional: show match in a popup if off-screen
      vim.g.matchup_matchparen_offscreen = { method = 'popup' }
      -- Enable other useful features if you want
      vim.g.matchup_enabled = 1
    end,
  },
}
