" ##############################################
" # editor setting
" ##############################################

""" shell設定
set shell=/bin/zsh

""" テーマ設定
" Workaround a problem with solarized and vim-gitgutter.
" https://github.com/airblade/vim-gitgutter/issues/696
highlight! link SignColumn LineNr
autocmd ColorScheme * highlight! link SignColumn LineNr
syntax enable
" set background=light
set background=dark
colorscheme solarized
" hi Comment ctermfg=black "コメントアウトの文字色設定

""" エンコード設定
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,ucs-bom,sjis,euc-jp,cp932,default,latin1
set fileformats=unix,dos,mac

""" ビジュアル設定
set number	"行番号の表示
set cursorline	"カーソルがある行番号を強調
hi cursorline cterm=underline "カーソルラインをハイライトからアンダーラインに変更
set signcolumn=yes "サイン列の表示
hi clear SignColumn "サイン列の色をクリアに
set laststatus=2 "常にステータス行を表示
set cmdheight=2 "ステータスライン下の行数設定"
set showcmd "コマンドをステータス行に表示
" set ruler "カーソルが何行何列にあるかを表示する
set noshowmode "モード非表示
set showmatch "括弧入力時に対応する括弧を表示

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
if has('persistent_undo')
  set undodir=~/.config/nvim/undo "Undoファイルの保存先
  set undofile
endif

" ##############################################
" # plugin install
" ##############################################
" :PlugInstall  このファイルに記述があり、まだインストールされていないプラグインをインストール
" :PlugClean    このファイルから無くなったプラグインを削除
call plug#begin() "以下にプラグインのurlを記述

"""" filer plugin
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'yuki-yano/fern-preview.vim'

"""" fzf plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"""" git plugin
"" git差分の表示
Plug 'airblade/vim-gitgutter'

"""" status line plugin
Plug 'itchyny/lightline.vim'

"""" themes colors plugin
Plug 'altercation/vim-colors-solarized'

"""" LSP plugin
"" coc.nvim関係
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'jwalton512/vim-blade'

"" lspカラー
Plug 'folke/lsp-colors.nvim'

"" nvim-lsp関係
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

"" nvim-lsp自動補完
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-nvim-lua'

"""" ハイライト
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
Plug 'm-demare/hlargs.nvim'

"""" スクロールバー
Plug 'petertriho/nvim-scrollbar'

"""" 検索系
Plug 'kevinhwang91/nvim-hlslens'

"""" fモーション強化
Plug 'unblevable/quick-scope'

"""" ペアジャンプ
Plug 'andymass/vim-matchup'

"""" 括弧自動補完
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

"""" マーク表示
Plug 'chentoast/marks.nvim'

"""" 行表示変更
Plug 'myusuf3/numbers.vim'

"""" help 日本語化 plugin
Plug 'vim-jp/vimdoc-ja'

"""" ノーマルモードへ戻る場合にIMEをオフ
Plug 'yoshida-m-3/vim-im-select'

"""" indent line plugin
Plug 'Yggdroot/indentLine'
" Plug 'lukas-reineke/indent-blankline.nvim'

"""" space highlight plugin
Plug 'ntpeters/vim-better-whitespace'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

"""" シンタックスハイライト
" Plug 'sheerun/vim-polyglot'

"""" xtermカラー表示(:XtermColorTable)
Plug 'guns/xterm-color-table.vim'

"""" 機能不明
Plug 'edkolev/promptline.vim'

call plug#end()

lua << EOF

-- 5. another
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})

-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"
-- require("indent_blankline").setup {
--     space_char_blankline = " ",
--     show_current_context = true,
--     show_current_context_start = true,
-- }

require('marks').setup()
require('hlslens').setup()
require("scrollbar").setup()
require("nvim-autopairs").setup()
require('nvim-ts-autotag').setup()

EOF

let s:plugs = get(s:, 'plugs', get(g:, 'plugs', {}))
function! FindPlugin(name) abort
  return has_key(s:plugs, a:name) ? isdirectory(s:plugs[a:name].dir) : 0
endfunction
command! -nargs=1 UsePlugin if !FindPlugin(<args>) | finish | endif

runtime! _config/*.vim

