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
    vim.g.startify_custom_header = vim.fn['startify#center'](read_header_file 'lua/header')

    -- Disable default lists (bookmarks, sessions, etc.)
    vim.g.startify_lists = {}

    -- Prevent session autoloading
    vim.g.startify_session_autoload = 0
  end,
}
