return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Add file to harpoon' })
    vim.keymap.set('n', '<C-a>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open harpoon window' })

    vim.keymap.set('n', '<A-1>', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon quick select 1' })
    vim.keymap.set('n', '<A-2>', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon quick select 2' })
    vim.keymap.set('n', '<A-3>', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon quick select 3' })
    vim.keymap.set('n', '<A-4>', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon quick select 4' })

    vim.keymap.set('n', '<A-h>', function()
      harpoon:list():prev()
    end, { desc = 'Harpon previous' })
    vim.keymap.set('n', '<A-l>', function()
      harpoon:list():next()
    end, { desc = 'Harpon next' })
  end,
}
