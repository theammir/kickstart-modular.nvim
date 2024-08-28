return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    ft = { 'rust' },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(args)
          vim.keymap.set('n', '<leader>le', '<cmd>RustLsp expandMacro<cr>', { desc = 'Expand Rust macro' })
        end,
      })
      vim.g.rustaceanvim = {
        server = {
          default_settings = {
            ['rust-analyzer'] = {
              diagnostics = {
                enable = true,
              },
              check = {
                command = 'clippy',
              },
              imports = {
                granularity = {
                  group = 'crate',
                },
              },
            },
          },
        },
      }
    end,
  },
}
