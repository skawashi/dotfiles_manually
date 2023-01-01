local status, TS = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

TS.setup({
  ensure_installed = {
    'php',
    'lua',
  },
  highlight = {
    enable = true,  -- syntax highlightを有効にする
    disable = {     -- 一部の言語では無効にする
      -- 'lua',
      -- 'vue',
      -- 'php',
      -- 'help'
    }
  },
  indent = {
    enable = true,
  },
  matchup = {
    enable = true,
    disable = {
      -- 'c',
      -- 'ruby'
    },
    -- [options]
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
})
