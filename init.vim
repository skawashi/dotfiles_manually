" ##############################################
" # editor setting
" ##############################################

" Workaround a problem with solarized and vim-gitgutter.
" https://github.com/airblade/vim-gitgutter/issues/696
" signcolumnが灰色になるのを解消する
" highlight! link SignColumn LineNr
" autocmd ColorScheme * highlight! link SignColumn LineNr

""" shell設定
set shell=/bin/zsh

""" Nodeのpath
let g:node_host_prog='/Users/skawashi/.nodebrew/node/v18.8.0/lib/node_modules/neovim/bin/cli.js'

""" テーマ設定
set termguicolors
syntax enable
" set background=light
" set background=dark
" colorscheme solarized
" hi Comment ctermfg=black "コメントアウトの文字色設定

""" エンコード設定
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,ucs-bom,sjis,euc-jp,cp932,default,latin1
set fileformats=mac,unix,dos

""" ビジュアル設定
set number	"行番号の表示
set cursorline	"カーソルがある行番号を強調
hi cursorline cterm=underline "カーソルラインをハイライトからアンダーラインに変更
set signcolumn=yes:2 "サイン列の表示
hi clear SignColumn "サイン列の色をクリアに
set laststatus=3 "常にステータス行を表示
set cmdheight=1 "ステータスライン下の行数設定"
set showcmd "コマンドをステータス行に表示
" set ruler "カーソルが何行何列にあるかを表示する
set noshowmode "モード非表示
set showmatch "括弧入力時に対応する括弧を表示
set nowrap

""" 検索設定
set ignorecase "検索時に大文字小文字を区別しない
set incsearch "インクリメント検索(最初の文字が入力された時点で検索開始)
set smartcase "検索時に大文字と小文字が含まれている場合、それぞれ区別する
set wrapscan "最後まで検索したら最初の行へ
set hlsearch "検索にマッチするテキストをハイライト

""" 基本設定
set helplang=ja "ヘルプの日本語化用
set ttimeoutlen=10 "escapeでノーマルモードへ移行するまでの時間
set shiftwidth=4 "
set tabstop=4 "タブの半角スペース数
set expandtab "タブを入力するとスペースを入力
set autoindent "改行した時、インデントを同じレベルにする
set smartindent "{で改行すると自動でインデントされる
" set noswapfile	"スワップファイルを作成しない
set whichwrap=b,s,h,l,<,>,[,],~	"行を跨いで移動できるようにする
set backspace=indent,eol,start "バックスペースでインデントや改行を削除可
set mouse=a "マウスの有効化 a:常に n:ノーマル i:インサート v:ビジュアル c:コマンド
set clipboard+=unnamed "vimでコピーしたものをクリップボードに保存
set updatetime=500

if has('persistent_undo')
  set undodir=~/.config/nvim/undo "Undoファイルの保存先
  set undofile
endif

" vimを開いた時に、閉じる前にカーソルがあった場所から始まるようにする設定
if has('autocmd')
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

""" 標準プラグイン読み込みスキップ
let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
let g:did_load_filetypes        = 1
let g:did_load_ftplugin         = 1
let g:loaded_2html_plugin       = 1
let g:loaded_gzip               = 1
let g:loaded_man                = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:loaded_zipPlugin          = 1
let g:skip_loading_mswin        = 1

" ##############################################
" # plugin install
" ##############################################
" :PlugInstall  このファイルに記述があり、まだインストールされていないプラグインをインストール
" :PlugClean    このファイルから無くなったプラグインを削除
" call plug#begin() "以下にプラグインのurlを記述
"""" 起動時間計測
" Plug 'dstein64/vim-startuptime'

" """" nvim起動画面plugin
" Plug 'goolord/alpha-nvim'

" """" filer plugin
" Plug 'lambdalisue/fern.vim'
" Plug 'lambdalisue/fern-hijack.vim'
" Plug 'yuki-yano/fern-preview.vim'

" """" fzf plugin
" " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" Plug 'nvim-telescope/telescope-frecency.nvim'
" " Plug 'dhruvmanila/telescope-bookmarks.nvim', { 'tag': '*' }

" """" git plugin
" "" git差分の表示
" " Plug 'airblade/vim-gitgutter'
" Plug 'lewis6991/gitsigns.nvim'

" """" status line plugin
" " Plug 'itchyny/lightline.vim'
" Plug 'nvim-lualine/lualine.nvim'

" """" カラースキーム
" Plug 'ishan9299/nvim-solarized-lua'
" " Plug 'RRethy/nvim-base16'

" """" 依存
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-tree/nvim-web-devicons'
" Plug 'rcarriga/nvim-notify'
" Plug 'nvim-lua/popup.nvim'
" Plug 'kkharji/sqlite.lua'

" """" lsp UI
" "" カラー
" Plug 'folke/lsp-colors.nvim'

" "" パーツ
" Plug 'kkharji/lspsaga.nvim'

" "" error, diagnosticの検索
" Plug 'folke/trouble.nvim'

" "" 対応する括弧をバーチャルテキストで表示(キーマップ設定をした方がいいかも)
" Plug 'haringsrob/nvim_context_vt'

" """" LSP
" "" インストーラー等
" Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/mason.nvim'
" Plug 'williamboman/mason-lspconfig.nvim'

" "" nvim-lsp自動補完
" Plug 'hrsh7th/nvim-cmp'
" Plug 'onsails/lspkind-nvim'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
" Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/cmp-nvim-lua'
" Plug 'ray-x/cmp-treesitter'

" "" lspサーバーダウンロード状況表示
" Plug 'j-hui/fidget.nvim'

" "" 複数の言語が入っていても、言語に応じてコメントアウト
" Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" """" blade用lsp
" Plug 'jwalton512/vim-blade'

" """" ハイライト
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'p00f/nvim-ts-rainbow'
" Plug 'm-demare/hlargs.nvim'

" """" スクロールバー
" Plug 'petertriho/nvim-scrollbar'

" """" 検索系
" Plug 'kevinhwang91/nvim-hlslens'

" """" キーマップ表示
" Plug 'folke/which-key.nvim'

" """" fモーション強化
" Plug 'unblevable/quick-scope'

" """" ペアジャンプ
" Plug 'andymass/vim-matchup'

" """" 括弧自動補完
" Plug 'windwp/nvim-autopairs'
" Plug 'windwp/nvim-ts-autotag'

" """" Linter
" Plug 'jose-elias-alvarez/null-ls.nvim'

" """" マーク表示
" Plug 'chentoast/marks.nvim'

" """" 行表示変更
" Plug 'myusuf3/numbers.vim'

" """" help 日本語化 plugin
" Plug 'vim-jp/vimdoc-ja'

" """" ノーマルモードへ戻る場合にIMEをオフ
" Plug 'yoshida-m-3/vim-im-select'

" """" indent line plugin
" Plug 'Yggdroot/indentLine'
" " Plug 'lukas-reineke/indent-blankline.nvim'

" """" space highlight plugin
" Plug 'ntpeters/vim-better-whitespace'

" """" タイピング向上プラグイン
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-repeat'
" " w, bの移動が行をまたがない
" Plug 'yutkat/wb-only-current-line.nvim'

" """" シンタックスハイライト
" " Plug 'sheerun/vim-polyglot'

" """" xtermカラー表示(:XtermColorTable)
" Plug 'guns/xterm-color-table.vim'

" """" カラーコードの色表示
" Plug 'norcalli/nvim-colorizer.lua'

" """" URLからブラウザ検索
" Plug 'tyru/open-browser.vim'

" call plug#end()

set completeopt=menu,menuone,noselect "" nvim-cmp のれどめにあった
set pumheight=15 " popup menu の高さ制限

lua << EOF
-- カラースキーム
-- vim.cmd('colorscheme solarized-flat')
-- vim.g.solarized_visibility = 'high'
-- vim.g.solarized_italics = 1
-- vim.g.solarized_termtrans = 1

-- 仮想端末(補完メニュー等)が透過されるようになる
vim.opt.winblend = 20
vim.opt.pumblend = 20

-- <leader>設定
vim.g.mapleader = " "

-- NeoVim起動画面
-- require'alpha'.setup(require'alpha.themes.startify'.config)
-- local alpha = require('alpha')
-- local dashboard = require('alpha.themes.dashboard')
-- dashboard.section.header.val = {
--     "                                                     ",
--     "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
--     "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
--     "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
--     "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
--     "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
--     "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
--     "                                                     ",
-- }
-- dashboard.section.buttons.val = {
--     dashboard.button("SPC f f", "  > Find file"),
--     dashboard.button("SPC f r", "  > Recent files"),
--     dashboard.button("SPC f r", "  > Frecency/MRU"),
--     dashboard.button("SPC f g", "  > Find word"),
--     dashboard.button("e", "  > New file" , ":ene <BAR> startinsert <CR>"),
--     dashboard.button("q", "  > Quit NeoVim", ":qa<CR>"),
-- }
-- alpha.setup(dashboard.opts)
-- 
-- require('lualine').setup({
--   options = {
--     theme = 'solarized_dark',
--   }
-- })
-- 
-- -- 1. lsp sever management
-- local mason = require('mason')
-- mason.setup({
--   ui = {
--     icons = {
--      package_installed = "✓",
--      package_pending = "➜",
--      package_uninstalled = "✗"
--     }
--   }
-- })
-- 
-- require('mason-lspconfig').setup_handlers({ function(server)
--   local opt = {
--     capabilities = require('cmp_nvim_lsp').default_capabilities(
--       vim.lsp.protocol.make_client_capabilities()
--     )
--   }
--   require('lspconfig')[server].setup(opt)
-- end })
-- 
-- -- 2. build-in lsp function
-- -- keyboard shortcut
-- vim.keymap.set('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<cr>')
-- vim.keymap.set('n', 'gf', '<cmd>lua vim.lsp.buf.format { async = true }<cr>')
-- vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
-- vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
-- vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<cr>')
-- vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
-- vim.keymap.set('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
-- vim.keymap.set('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<cr>')
-- vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr>')
-- vim.keymap.set('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<cr>')
-- vim.keymap.set('n', 'g]', '<cmd>lua vim.diagnostic.goto_next()<cr>')
-- vim.keymap.set('n', 'g[', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
-- 
-- -- lsp handlers
-- vim.lsp.handlers["textdocument/publishdiagnostics"] = vim.lsp.with(
--   vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
-- )
-- -- reference highlight
-- vim.cmd [[
-- highlight lspreferencetext  cterm=underline ctermfg=1 ctermbg=8 guifg=#ffffff guibg=#104040 gui=none
-- highlight lspreferenceread  cterm=underline ctermfg=1 ctermbg=8 guifg=#ffffff guibg=#104040 gui=none
-- highlight lspreferencewrite cterm=underline ctermfg=1 ctermbg=8 guifg=#ffffff guibg=#104040 gui=none
-- 
-- let s:bl = ['help', 'markdown', 'txt', 'php', 'blade'] " set blacklist filetype
-- augroup lsp_document_highlight
--   autocmd! * <buffer>
--   " autocmd CursorHold,CursorHoldI <buffer> if index(s:bl, &ft) < 0 | lua vim.lsp.buf.document_highlight()
--   " autocmd CursorHold <buffer> if index(s:bl, &ft) < 0 | lua vim.lsp.buf.document_highlight()
--   " autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
--   autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
--   autocmd CursorMovedI <buffer> lua vim.lsp.buf.clear_references()
-- augroup end
-- ]]
-- 
-- -- 3. completion (hrsh7th/nvim-cmp)
-- local cmp = require("cmp")
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- local lspkind = require('lspkind')
-- cmp.setup({
--   snippet = {
--     expand = function(args)
--       vim.fn["vsnip#anonymous"](args.body)
--     end,
--   },
--   sources = {
--     { name = 'nvim_lsp'},
--     { name = 'nvim_lsp_signature_help'},
--     { name = 'nvim_lua'},
--     { name = 'buffer'},
--     { name = 'path' },
--     { name = 'treesitter'},
--   },
--   mapping = cmp.mapping.preset.insert({
--     ["<c-p>"] = cmp.mapping.select_prev_item(),
--     ["<c-n>"] = cmp.mapping.select_next_item(),
--     ['<c-l>'] = cmp.mapping.complete(),
--     ['<c-e>'] = cmp.mapping.abort(),
--     ['<c-y>'] = cmp.mapping.confirm { select = true },
--   }),
--   formatting = {
--     format = function(entry, vim_item)
--       vim_item.abbr = string.sub(vim_item.abbr, 1, 20) -- 補完メニューで表示するサジェストの文字数制限
--       vim_item.kind = lspkind.presets.default[vim_item.kind]
--       vim_item.menu = ({
--         nvim_lsp = "[lsp]",
--         look     = "[dict]",
--         buffer   = "[buff]",
--       })[entry.source.name]
--     return vim_item
--     end
--   },
--   experimental = {
--     ghost_text = true,
--   },
--   -- view = {
--   --   entries = {name = 'custom', selection_order = 'near_cursor' }
--   -- },
-- })
-- 
-- cmp.setup({
--     enabled = function()
--       -- disable completion in comments
--       local context = require 'cmp.config.context'
--       -- keep command mode completion enabled when cursor is in a comment
--       if vim.api.nvim_get_mode().mode == 'c' then
--         return true
--       else
--         return not context.in_treesitter_capture("comment")
--           and not context.in_syntax_group("comment")
--       end
--     end
-- })
-- 
-- cmp.setup.cmdline('/', {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = cmp.config.sources({
--     { name = 'nvim_lsp_document_symbol'}
--   },
--   {
--     { name = 'buffer'}
--   })
-- })
-- 
-- cmp.setup.cmdline(":", {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = {
--     { name = "path" },
--     { name = "cmdline"},
--   },
-- })
-- 
-- cmp.event:on(
--   'confirm_done',
--   cmp_autopairs.on_confirm_done()
-- )
-- vim.lsp.set_log_level("debug")
-- 
-- -- 4. nvim-treesitter
-- require'nvim-treesitter.configs'.setup {
--   highlight = {
--     enable = true,  -- syntax highlightを有効にする
--     disable = {     -- 一部の言語では無効にする
--       -- 'lua',
--       -- 'vue',
--       -- 'php',
--       -- 'help'
--     }
--   },
-- 
--   indent = {
--     enable = true,
--   },
-- 
--   matchup = {
--     enable = true,
--     disable = {
--       -- 'c',
--       -- 'ruby'
--     },
--     -- [options]
--   },
-- 
--   autotag = {
--     enable = true,
--   },
-- 
--   context_commentstring = {
--     enable = true
--   },
-- 
--   rainbow = {
--     enable = true,
--     extended_mode = true,
--     max_file_lines = 1000,
--     -- colors = {}, -- table of hex strings
--     -- termcolors = {} -- table of colour name strings
--   },
-- }
-- 
-- -- 変数ハイライト
-- require('hlargs').setup({
--   color = '#6c71c4',
-- })
-- require('hlargs').enable()
-- 
-- -- error, diagnosticを検索、表示
-- require("trouble").setup()
-- -- インストール状況表示
-- require("fidget").setup()
-- -- LSPのUIコンポーネント提供
-- require("lspsaga").setup()
-- 
-- -- 5. null-ls
-- local null_ls = require("null-ls")
-- 
-- null_ls.setup({
--     sources = {
--         null_ls.builtins.formatting.stylua,
--         -- null_ls.builtins.diagnostics.phpstan,
--         null_ls.builtins.formatting.phpcsfixer,
--         null_ls.builtins.formatting.blade_formatter,
--         -- null_ls.builtins.formatting.prettier,
--         null_ls.builtins.diagnostics.vint,
--     },
-- })
-- 
-- -- 6. Telescope
-- local telescope = require('telescope')
-- telescope.setup({})
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- vim.api.nvim_set_keymap("n", "<Leader>fo", ":Telescope oldfiles<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>fr", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<Leader>fm", ":Telescope marks<CR>", { noremap = true, silent = true })
-- 
-- -- 7. another
-- -- 対応する括弧をバーチャルテキストで表示
-- require('nvim_context_vt').setup({
--   enabled = false,
-- })
-- vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":NvimContextVtToggle<CR>", { noremap = true, silent = true })
-- 
-- require("lsp-colors").setup()
-- 
-- -- vim.opt.list = true
-- -- vim.opt.listchars:append "space:⋅"
-- -- vim.opt.listchars:append "eol:↴"
-- -- require("indent_blankline").setup {
-- --     space_char_blankline = " ",
-- --     show_current_context = true,
-- --     show_current_context_start = true,
-- -- }
-- 
-- vim.cmd [[
--   highlight GitSignsAdd    cterm=underline ctermfg=1 ctermbg=8 guibg=NONE gui=NONE
--   highlight GitSignsChange  cterm=underline ctermfg=1 ctermbg=8 guibg=NONE gui=NONE
--   highlight GitSignsDelete  cterm=underline ctermfg=1 ctermbg=8 guibg=NONE gui=NONE
-- ]]
-- 
-- require('gitsigns').setup({
--   signs = {
--     add          = { hl = 'GitSignsAdd'   , text = '●', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
--     change       = { hl = 'GitSignsChange', text = '●', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
--     delete       = { hl = 'GitSignsDelete', text = '●', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
--     topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
--     changedelete = { hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
--     untracked    = { hl = 'GitSignsAdd'   , text = '┆', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
--   },
-- })
-- require('marks').setup()
-- require("scrollbar").setup()
-- require("scrollbar.handlers.search").setup()
-- 
-- require("nvim-autopairs").setup()
-- require('nvim-ts-autotag').setup()
-- require("colorizer").setup()
-- require("which-key").setup()
EOF

" let g:matchup_matchparen_offscreen = {'method': 'popup'} "対応する括弧を画面上部に表示

let s:plugs = get(s:, 'plugs', get(g:, 'plugs', {}))
function! FindPlugin(name) abort
  return has_key(s:plugs, a:name) ? isdirectory(s:plugs[a:name].dir) : 0
endfunction
command! -nargs=1 UsePlugin if !FindPlugin(<args>) | finish | endif

runtime! _config/*.vim

