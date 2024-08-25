local function create_splash_screen()
  local center = function(dict)
    local new_dict = {}
    for _, v in pairs(dict) do
      local padding = vim.fn.max(vim.fn.map(dict, 'strwidth(v:val)'))
      local spacing = (' '):rep(math.floor((vim.o.columns - padding) / 2)) .. v
      table.insert(new_dict, spacing)
    end
    return new_dict
  end

  local read_header_from_file = function(filepath)
    local lines = {}
    for line in io.lines(filepath) do
      table.insert(lines, line)
    end
    return lines
  end

  local header = read_header_from_file(vim.fn.stdpath 'config' .. '/lua/header')

  local arg = vim.fn.argv(0)
  local excluded_ft = { 'lazy', 'minifiles', 'netrw', 'man' }
  if not vim.tbl_contains(excluded_ft, vim.bo.ft) and (arg == '') then
    local centered_header = center(header)
    local total_lines = #centered_header
    local start_line = math.floor((vim.o.lines - total_lines) / 2)

    -- Clear the buffer before inserting the header
    vim.api.nvim_buf_set_lines(0, 0, -1, false, {})

    -- Insert empty lines to center the header vertically
    for _ = 1, start_line - 1 do
      vim.api.nvim_put({ '' }, 'l', true, true)
    end

    -- Insert the centered header
    vim.api.nvim_put(centered_header, 'l', true, true)

    -- Set cursor position and buffer options
    vim.api.nvim_win_set_cursor(0, { 1, 1 })
    vim.cmd [[silent! setl nonu nornu nobl nolist nocul ft=dashboard bh=wipe bt=nofile]]
  end
end

local splash_screen = vim.schedule_wrap(create_splash_screen)

vim.api.nvim_create_autocmd('UIEnter', { pattern = '*', callback = splash_screen })
vim.api.nvim_create_autocmd('VimResized', { pattern = '*', callback = splash_screen })
