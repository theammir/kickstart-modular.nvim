-- return {
--   'ThePrimeagen/harpoon',
--   branch = 'harpoon2',
--   dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
--   config = function()
--     local harpoon = require 'harpoon'
--     harpoon:setup()
--
--     vim.keymap.set('n', '<leader>a', function()
--       harpoon:list():add()
--     end, { desc = 'Add file to harpoon' })
--     vim.keymap.set('n', '<C-a>', function()
--       harpoon.ui:toggle_quick_menu(harpoon:list())
--     end, { desc = 'Open harpoon window' })
--
--     vim.keymap.set('n', '<A-1>', function()
--       harpoon:list():select(1)
--     end, { desc = 'Harpoon quick select 1' })
--     vim.keymap.set('n', '<A-2>', function()
--       harpoon:list():select(2)
--     end, { desc = 'Harpoon quick select 2' })
--     vim.keymap.set('n', '<A-3>', function()
--       harpoon:list():select(3)
--     end, { desc = 'Harpoon quick select 3' })
--     vim.keymap.set('n', '<A-4>', function()
--       harpoon:list():select(4)
--     end, { desc = 'Harpoon quick select 4' })
--
--     vim.keymap.set('n', '<A-h>', function()
--       harpoon:list():prev()
--     end, { desc = 'Harpon previous' })
--     vim.keymap.set('n', '<A-l>', function()
--       harpoon:list():next()
--     end, { desc = 'Harpon next' })
--   end,
return {
  'cbochs/grapple.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    scope = 'git', -- also try out "git_branch"
  },
  keys = {
    { '<leader>a', '<cmd>Grapple toggle<cr>', desc = 'Tag a file' },
    { '<C-a>', '<cmd>Grapple toggle_tags<cr>', desc = 'Toggle tags menu' },

    { '<A-1>', '<cmd>Grapple select index=1<cr>', desc = 'Select first tag' },
    { '<A-2>', '<cmd>Grapple select index=2<cr>', desc = 'Select second tag' },
    { '<A-3>', '<cmd>Grapple select index=3<cr>', desc = 'Select third tag' },
    { '<A-4>', '<cmd>Grapple select index=4<cr>', desc = 'Select fourth tag' },

    { '<A-h>', '<cmd>Grapple cycle_tags prev<cr>', desc = 'Go to previous tag' },
    { '<A-l>', '<cmd>Grapple cycle_tags next<cr>', desc = 'Go to next tag' },
  },
}
