return {
  'mrjones2014/smart-splits.nvim',
  config = function()
    require('smart-splits').setup()

    vim.keymap.set('n', '<C-Up>', function()
      require('smart-splits').resize_up()
    end, { desc = 'Resize split up' })
    vim.keymap.set('n', '<C-Down>', function()
      require('smart-splits').resize_down()
    end, { desc = 'Resize split down' })
    vim.keymap.set('n', '<C-Left>', function()
      require('smart-splits').resize_left()
    end, { desc = 'Resize split left' })
    vim.keymap.set('n', '<C-Right>', function()
      require('smart-splits').resize_right()
    end, { desc = 'Resize split right' })
  end,
}
