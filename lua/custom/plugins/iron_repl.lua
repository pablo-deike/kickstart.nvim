return {
  'Vigemus/iron.nvim',
  config = function()
    local iron = require 'iron.core'
    local view = require 'iron.view'
    local common = require 'iron.fts.common'

    iron.setup {
      config = {
        scratch_repl = true,
        repl_definition = {
          python = {
            command = { 'python3' },
            format = common.bracketed_paste_python,
            block_dividers = { '# %%', '#%%' },
          },
        },
        repl_open_cmd = view.right(60),
      },
      keymaps = {
        send_motion = '<leader>sc',
        visual_send = '<leader>sc',
        send_line = '<leader>sl',
        send_file = '<leader>sF',
        interrupt = '<leader>si',
        exit = '<leader>sq',
        clear = '<leader>cl',
      },
    }

    vim.keymap.set('n', '<leader>rs', '<cmd>IronRepl<cr>')
    vim.keymap.set('n', '<leader>rr', '<cmd>IronRestart<cr>')
  end,
}
