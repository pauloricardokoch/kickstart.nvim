-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  config = function()
    -- disable netrw (optional, but recommended)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwFileHandlers = 1

    -- setup nvim-tree
    require('nvim-tree').setup {
      -- add any options here
    }

    -- Set a keymap to toggle the sidebar
    vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
  end,
}
