return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = true, -- Start enabled
          keymap = {
            accept = '<C-J>', -- Your custom key to accept suggestions
            next = '<M-]>',
            prev = '<M-[>',
            dismiss = '<C-]>',
          },
        },
        panel = { enabled = true },
        filetypes = { ['*'] = true },
      }

      -- DEFINE THE TOGGLE COMMAND HERE
      -- This toggles the specific "auto_trigger" feature of the Lua plugin
      vim.api.nvim_create_user_command('CopilotToggle', function()
        local suggestion = require 'copilot.suggestion'
        if suggestion.is_visible() then
          suggestion.dismiss()
        end
        suggestion.toggle_auto_trigger()
        print 'Copilot Autocomplete Toggled'
      end, {})

      -- Keybinding to toggle autocomplete (Leader + tp)
      vim.keymap.set('n', '<leader>tp', ':CopilotToggle<CR>', { desc = 'Toggle Copilot Ghost Text' })
    end,
  },
}
