return {
  'tpope/vim-repeat',
  'airblade/vim-rooter',
  {
    'szw/vim-maximizer',
    config = function()
      vim.g.maximizer_set_mapping_with_bang = 1
    end,
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
  {
    'nativerv/cyrillic.nvim',
    event = { 'VeryLazy' },
    config = function()
      require('cyrillic').setup {
        no_cyrillic_abbrev = false, -- default
      }
    end,
  },
  {
    'brenoprata10/nvim-highlight-colors',
    opts = {},
  },
  {
    'kevinhwang91/nvim-ufo',
    dependencies = {
      'kevinhwang91/promise-async',
    },
    config = function()
      require('ufo').setup()

      vim.o.foldcolumn = '0' -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    opts = {
      size = 10,
      open_mapping = [[<F7>]],
      shading_factor = 2,
      direction = 'float',
      float_opts = {
        border = 'curved',
        highlights = { border = 'Normal', background = 'Normal' },
      },
    },
  },
}
