return {
  'tpope/vim-repeat',
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    opts = {
      keymaps = {
        insert = '<C-g>z',
        insert_line = 'gC-ggZ',
        normal = 'gz',
        normal_cur = 'gZ',
        normal_line = 'gzgz',
        normal_cur_line = 'gZgZ',
        visual = 'gz',
        visual_line = 'gZ',
        delete = 'gzd',
        change = 'gzc',
      },
    },
  },
  {
    'ggandor/leap.nvim',
    lazy = false,
    config = function()
      require('leap').create_default_mappings()

      require('leap').opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }
      require('leap.user').set_repeat_keys('<enter>', '<backspace>')
    end,
  },
  {
    'max397574/better-escape.nvim',
    opts = {},
  },
  { 'github/copilot.vim' },
  {
    'mrjones2014/smart-splits.nvim',
    config = function()
      require('smart-splits').setup()
      vim.keymap.set('n', '<C-h>', function()
        require('smart-splits').move_cursor_left()
      end, { desc = 'Move to left split' })
      vim.keymap.set('n', '<C-j>', function()
        require('smart-splits').move_cursor_down()
      end, { desc = 'Move to below split' })
      vim.keymap.set('n', '<C-k>', function()
        require('smart-splits').move_cursor_up()
      end, { desc = 'Move to above split' })
      vim.keymap.set('n', '<C-l>', function()
        require('smart-splits').move_cursor_right()
      end, { desc = 'Move to right split' })
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
  },
  -- {
  --   'nvim-tree/nvim-tree.lua',
  --   version = '*',
  --   lazy = false,
  --   dependencies = {
  --     'nvim-tree/nvim-web-devicons',
  --     { 'antosha417/nvim-lsp-file-operations', opts = {} },
  --   },
  --   config = function()
  --     require('nvim-tree').setup()
  --     vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { desc = 'Toggle file tree' })
  --     vim.keymap.set('n', '<leader>o', '<cmd>NvimTreeFocus<cr>', { desc = 'Focus file tree' })
  --   end,
  -- },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup()
      vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>', { desc = 'Toggle file tree' })
      vim.keymap.set('n', '<leader>o', '<cmd>Neotree focus<cr>', { desc = 'Focus file tree' })

      vim.cmd [[
        highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon
        highlight! link NeoTreeDirectoryName NvimTreeFolderName
        highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink
        highlight! link NeoTreeRootName NvimTreeRootFolder
        highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName
        highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile
      ]]
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    opts = {},
  },
  {
    'nativerv/cyrillic.nvim',
    event = { 'VeryLazy' },
    config = function()
      require('cyrillic').setup {
        no_cyrillic_abbrev = false, -- default
      }
    end,
  },
}
