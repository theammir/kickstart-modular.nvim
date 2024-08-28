return {
  'mhinz/vim-startify',
  config = function()
    -- Read the header file
    local function read_header_file(filepath)
      local lines = {}
      for line in io.lines(filepath) do
        table.insert(lines, line)
      end
      return lines
    end

    -- Set up Startify with a custom header
    vim.g.startify_custom_header = vim.fn['startify#center'](read_header_file(vim.fn.stdpath 'config' .. '/lua/header'))

    -- Disable default lists (bookmarks, sessions, etc.)
    vim.g.startify_lists = { { type = 'bookmarks', header = { '' } } }
    vim.g.startify_enable_special = 0

    -- Prevent session autoloading
    vim.g.startify_session_autoload = 0
    vim.g.startify_change_to_dir = 0
  end,
}
