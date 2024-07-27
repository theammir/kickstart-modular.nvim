-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<C-s>', '<cmd>:w<cr>', { desc = 'Quick-save' })
vim.keymap.set('n', '<leader>q', '<cmd>:confirm qa<cr>', { desc = 'Quit' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Resize horizontal window up' })
-- vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Resize horizontal window down' })
-- vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize +2<cr>', { desc = 'Resize vertical window left' })
-- vim.keymap.set('n', '<C-Right>', '<cmd>resize -2<cr>', { desc = 'Resize vertical window right' })

vim.keymap.set('n', '\\', '<C-w>s', { desc = 'Horizontal split' })
vim.keymap.set('n', '|', '<C-w>v', { desc = 'Vertical split' })

vim.keymap.set('n', '<S-h>', '<cmd>tabprev<cr>', { desc = 'Previous tab' })
vim.keymap.set('n', '<S-l>', '<cmd>tabnext<cr>', { desc = 'Next tab' })
vim.keymap.set('', '<C-d>', '<C-d>zz')
vim.keymap.set('', '<C-u>', '<C-u>zz')
vim.keymap.set('', '<M-k>', '<cmd>m .-2<cr>==', { desc = 'Move line up' })
vim.keymap.set('', '<M-j>', '<cmd>m .+1<cr>==', { desc = 'Move line down' })

vim.keymap.set('n', '<leader>dc', '<cmd>cd %:p:h<cr>', { desc = 'Change to current directory' })

if vim.g.neovide then
  vim.keymap.set('n', '<C-=>', '<cmd>let g:neovide_scale_factor = g:neovide_scale_factor + 0.1<cr>', { desc = 'Increase Neovide scale factor' })
  vim.keymap.set('n', '<C-->', '<cmd>let g:neovide_scale_factor = g:neovide_scale_factor - 0.1<cr>', { desc = 'Decrease Neovide scale factor' })
  vim.keymap.set('n', '<leader>F', '<cmd>let g:neovide_fullscreen = !g:neovide_fullscreen<cr>', { desc = 'Toggle Neovide fullscreen' })
end

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
