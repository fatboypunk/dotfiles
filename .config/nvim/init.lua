require("fatboypunk")

function RunTerminalCommand(command)
  vim.cmd('botright new')
  local term_buf = vim.api.nvim_create_buf(false, true)
  local term_job = vim.fn.termopen(command, {on_exit = function(_, code)
    if code == 0 then
      vim.api.nvim_buf_set_keymap(term_buf, 'n', '<CR>', ':q<CR>', {})
      vim.cmd('wincmd p')
      vim.api.nvim_buf_set_option(term_buf, 'modifiable', false)
      vim.api.nvim_buf_set_option(term_buf, 'readonly', true)
    end
  end})
  vim.api.nvim_set_current_buf(term_buf)
  vim.cmd('redraw')
  print("Press <Enter> to exit test runner terminal (<Ctrl-C> first if command is still running)")
end



