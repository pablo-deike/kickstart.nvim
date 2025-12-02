return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {},

    keys = {
      { '<leader>zc', ':CopilotChat<CR>', mode = 'n', desc = 'Chat with copilot' },
      { '<leader>ze', ':CopilotChatExplain<CR>:', mode = 'v', desc = 'Explain code' },
      { '<leader>zr', ':CopilotChatReview<CR>', mode = 'v', desc = 'Review code' },
      { '<leader>zf', ':CopilotChatFix<CR>', mode = 'v', desc = 'Fix Code Issues' },
      { '<leader>zo', ':CopilotChatOptimize<CR>', mode = 'v', desc = 'Optimize Code' },
      { '<leader>zd', ':CopilotChatDocs<CR>', mode = 'v', desc = 'Generate Documentation' },
      { '<leader>zt', ':CopilotChatTests<CR>', mode = 'v', desc = 'Generate Tests' },
      { '<leader>zm', ':CopilotChatCommit<CR>', mode = 'v', desc = 'Generate Commit Message' },
      { '<leader>tp', ':CopilotToggle<CR>', mode = 'n', desc = 'Toggle Copilot' }, -- Add this line
    },
  },
}
