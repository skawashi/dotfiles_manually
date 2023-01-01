local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Plugin manager


  -- Editor
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'akinsho/nvim-bufferline.lua' -- Tab custom
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'goolord/alpha-nvim'
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
  }

  -- Library
  use 'zsugabubus/crazy8.nvim' -- Auto define ts, sw, sts, et
  use 'tpope/vim-repeat'
  use 'machakann/vim-sandwich'
  use 'numToStr/Comment.nvim'
  use 'yutkat/wb-only-current-line.nvim'
  use 'folke/which-key.nvim'
  use 'yoshida-m-3/vim-im-select'
  use {
    'jinh0/eyeliner.nvim',
    config = function()
      require 'eyeliner'.setup {
        highlight_on_key = true
      }
    end
  }
  -- use {
  --   'phaazon/hop.nvim',
  --   branch = 'v2', -- optional but strongly recommended
  --   config = function()
  --     require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  --   end
  -- }

  use 'kevinhwang91/nvim-hlslens'
  use 'petertriho/nvim-scrollbar'
  use 'myusuf3/numbers.vim'

  use 'haringsrob/nvim_context_vt'
  use 'ntpeters/vim-better-whitespace'
  use 'j-hui/fidget.nvim'
  use 'rcarriga/nvim-notify'
  use 'folke/trouble.nvim'

  use 'tyru/open-browser.vim'
  use 'norcalli/nvim-colorizer.lua'

  -- Plugin library
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-tree/nvim-web-devicons' -- File icons
  use 'rcarriga/nvim-notify'
  use 'nvim-lua/popup.nvim'
  use 'kkharji/sqlite.lua'
  use 'MunifTanjim/nui.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'folke/lsp-colors.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs

  -- Completion
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-nvim-lsp-signature-help' -- nvim-cmp source
  use 'hrsh7th/cmp-nvim-lsp-document-symbol' -- nvim-cmp source
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source
  use 'hrsh7th/cmp-path' -- nvim-cmp source
  use 'hrsh7th/cmp-cmdline' -- nvim-cmp source
  use 'hrsh7th/vim-vsnip' -- nvim-cmp source
  use 'hrsh7th/cmp-nvim-lua' -- nvim-cmp source
  use 'ray-x/cmp-treesitter' -- nvim-cmp source
  use 'windwp/nvim-autopairs'

  -- Linter, Formatter
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
  }
  use 'windwp/nvim-ts-autotag' -- Install after TS installation have completed
  use 'p00f/nvim-ts-rainbow'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'm-demare/hlargs.nvim'   -- Highlight args
  use 'andymass/vim-matchup'

  -- FZF
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  use {
    'nvim-telescope/telescope-file-browser.nvim',
    config = function()
      require('telescope').load_extension('file_browser')
    end
  }
  use {
    'nvim-telescope/telescope-frecency.nvim',
    config = function()
      require('telescope').load_extension('frecency')
    end,
  }
  use {
    'nvim-telescope/telescope-packer.nvim',
    config = function()
      require('telescope').load_extension('packer')
    end,
  }

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'kdheepak/lazygit.nvim'

  -- Markdown
  use({
    'iamcco/markdown-preview.nvim',
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  })

  -- Zen Mode
  use 'folke/zen-mode.nvim'

  -- startup time measurement
  use 'dstein64/vim-startuptime'

end) -- packer end

-- better-whitespace config
vim.cmd([[
  let g:better_whitespace_operator='_s' " 削除コマンドのprefix変更
  let g:strip_whitespace_on_save=1 " 保存時にスペース削除
  let g:strip_whitespace_confirm=0 " 0:保存時にスペース削除の確認をしない
  let g:better_whitespace_filetypes_blacklist = ['alpha']
  autocmd FileType * EnableStripWhitespaceOnSave
]])

vim.cmd([[
  runtime macros/sandwich/keymap/surround.vim
]])
