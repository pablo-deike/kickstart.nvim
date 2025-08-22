return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = true, auto_trigger = true, keymap = { accept = '<C-J>' } },
        panel = { enabled = true },
        filetypes = {
          ['*'] = true,
        },
      }
    end,
  },
}
