return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
    },
    config = function()
      require('CopilotChat').setup {
        debug = false, -- set true if you want logs
      }

      -- Example keymaps
      vim.api.nvim_set_keymap('n', '<leader>cc', ':CopilotChat<CR>', { desc = 'Open Copilot Chat' })
      vim.api.nvim_set_keymap('v', '<leader>ce', ':CopilotChatExplain<CR>', { desc = 'Explain code', noremap = true })
      vim.api.nvim_set_keymap('v', '<leader>cf', ':CopilotChatFix<CR>', { desc = 'Fix code', noremap = true })
    end,
  },
}
