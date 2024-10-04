-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<C-s>', '<cmd>:w<cr>', { desc = 'Quick-save' })
vim.keymap.set('n', '<leader>q', '<cmd>:confirm qa<cr>', { desc = 'Quit' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '\\', '<C-w>s', { desc = 'Horizontal split' })
vim.keymap.set('n', '|', '<C-w>v', { desc = 'Vertical split' })

vim.keymap.set('n', '<S-h>', '<cmd>tabprev<cr>', { desc = 'Previous tab' })
vim.keymap.set('n', '<S-l>', '<cmd>tabnext<cr>', { desc = 'Next tab' })
vim.keymap.set('', '<C-d>', '<C-d>zz')
vim.keymap.set('', '<C-u>', '<C-u>zz')
vim.keymap.set('', '<M-k>', '<cmd>m .-2<cr>==', { desc = 'Move line up' })
vim.keymap.set('', '<M-j>', '<cmd>m .+1<cr>==', { desc = 'Move line down' })

vim.keymap.set('n', '<leader>dc', '<cmd>cd %:p:h<cr>', { desc = 'Change to current directory' })

vim.keymap.set('n', '<leader>ul', '<cmd>Lazy<cr>', { desc = 'Open Lazy' })
vim.keymap.set('n', '<leader>um', '<cmd>Mason<cr>', { desc = 'Open Mason' })
vim.keymap.set('n', '<leader>ut', '<cmd>Themery<cr>', { desc = 'Open Themery' })

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
