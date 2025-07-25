return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/personal/files/vaults/personal/test',
      },
    },
    ui = { enable = false },
    -- see below for full list of options 👇
  },
  -- config = function(_, opts)
  --   -- Safely setup obsidian plugin
  --   require('obsidian').setup(opts)
  --
  --   -- Setup autocmd for conceallevel
  --   vim.api.nvim_create_autocmd('FileType', {
  --     pattern = 'markdown',
  --     callback = function()
  --       -- Protected call just in case
  --       pcall(function()
  --         vim.opt_local.conceallevel = 2
  --       end)
  --     end,
  --   })
  -- end,
}
