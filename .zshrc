## ターミナル起動時、tmuximum実行
# if [ -z $TMUX ]; then
#   tmuximum
# fi

# pokemonsay 'Welcome'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="amuse"
ZSH_THEME="powerlevel10k/powerlevel10k"

##############################
# zsh plugin manuall install #
##############################

#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.zsh/zsh-completions/zsh-completions.plugin.zsh


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    autojump
    web-search
    macos
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

###################################
# zsh-syntax-highlighting setting
###################################
# 参考ページ(https://wonderwall.hatenablog.com/entry/2016/06/25/205033)
# 参考ページその2(https://qiita.com/shun198/items/c60ec1cce9c9bf1e8c26)
# Git Hub(https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md)

## Initial Setting
# 下記を追記
ZSH_HIGHLIGHT_HIGHLIGHTERS=(
    main
    brackets
    pattern
    regexp
#    cursor     # ctrl+f で補完すると、その時のカーソルの次の文字が強調されるためoff
    root
    line
)

# 連想配列
typeset -A ZSH_HIGHLIGHT_STYLES

## main(highlight,underline)
# 存在するパスのハイライト
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[globbing]='none'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=cyan'

## bracket
# マッチしない括弧
ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=white'

# 括弧の階層
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-5]='fg=cyan,bold'

## cursor
# カーソルがある場所の括弧にマッチする括弧
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='standout'
#ZSH_HIGHLIGHT_STYLES[cursor]='bg=blue'

## root
ZSH_HIGHLIGHT_STYLES[root]='bg=red'弧の色を変える

###############
# FZF setting
###############
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias f='fzf-tmux --preview "head -n 100 {}"'
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
# export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
export FZF_CTRL_T_OPTS="--preview 'tree -C {} | head -200'"

fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

fbr() {
  local branches branch
  branches=$(git --no-pager branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

##################
# Option setting
##################
setopt no_beep
setopt auto_pushd
setopt pushd_ignore_dups
setopt auto_cd
setopt hist_ignore_dups
setopt share_history
setopt inc_append_history

###################
# History setting
###################
export HSITFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

#区切り文字設定
export WORDCHARS="*?_-.[]~&;=!#$%^()[]<>"

# vimのescapeでノーマルモードへ移行する時間用設定
KEYTIMEOUT=1

###################
# bindkey setting
###################
bindkey "ç" fzf-cd-widget # Opt+c で打たれる文字をバインド
bindkey \^U backward-kill-line # ctrl+u で行頭からカーソル前まで削除

###################
# 環境変数
###################
## fzf-tmux setting
export FZF_TMUX=1
export FZF_TMUX_OPTS="-p 80%,80%" #[width(%),[heigh(%)]
## nodebrew
export NODE_BREW=$HOME/.nodebrew/current/bin # nodebrew

export EDITOR='nvim'

###################
# PATH
###################
## nodebrew
export PATH=~/.composer/vendor/bin:$PATH
export PATH=$NODE_BREW:/usr/local/bin:$PATH #nodebrew

## Pokemonsay
export PATH=/Users/skawashi/bin:$PATH

## 外部インストールしたtmuxコマンド
export PATH=/usr/local/bin/tmuximum:$PATH

## PHP
# ダウングレード
export PATH=/opt/homebrew/opt/php@7.4/bin:$PATH
export PATH=/opt/homebrew/opt/php@7.4/sbin:$PATH

# phpcs
export PATH=~/bin/PHP_CodeSniffer/bin:$PATH
#################
# Alias setting #
#################
## .zshrc 読み込み
alias z='source ~/.zshrc'

## confing file edit
alias vz='vim ~/.zshrc'
alias vv='vim ~/.config/nvim/init.vim'
alias vt="vim ~/.tmux.conf"
alias vomz='vim ~/.oh-my-zsh'
alias vd='vim ~/.vim/dein.toml'
alias vvi='vim ~/.vimrc'

## tmux
alias t='tmux a -d'
alias tt='tmux'
alias ttk='tmux kill-session -t'
alias ttl='tmux ls'
alias tm='tmuximum'

## EDITOR
alias vi='vim'
alias vim='$EDITOR'
alias nv='nvim'
alias view='nvim -R'

## normal command
alias ls='exa'
alias l='ls'
alias la='ls -a'
alias lla='ls -la'
alias rm='\rm -i'
alias mv='\mv -i'
alias cp='\cp -i'
alias cat='bat'
alias c='bat'
alias cl='clear'

## Git command
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gd='git diff'
alias gds='git diff --staged'
alias gs='git status'
alias gl='git log'
# alias br='branch'
# alias co='checkout'

## Docker Command
alias dcu='docker compose up'
alias dcud='docker compose up -d'
alias dcd='docker compose down'
alias dcs='docker compose stop'
alias dp='docker ps'
alias dpa='docker ps -a'
alias drac='docker rm $(docker ps -aq)'
alias drai='docker rmi $(docker images -q)'

## Pokemonsay
alias poke="pokemonsay 'Welcome'"

## tcomment
#if !exists('g:tcomment_types')
#	let g:tcomment_types = {}
#endif
#let g:tcomment_types['phpunit'] = '// %s'
#let g:tcomment_types['twig'] = '{# %s #}'
#let g:tcomment_types['.vimrc'] = '# %s'

# phpenv
# eval "$(anyenv init -)"

# phpenv() {
#   unfunction "$0"
#   source <(phpenv init -)
#   $0 "$@"
# }

# export PATH="/opt/homebrew/opt/bison/bin:$PATH"
# export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"
# export PATH="/opt/homebrew/opt/bzip2/bin:$PATH"
# export PATH="/opt/homebrew/opt/curl/bin:$PATH"
# export PATH="/opt/homebrew/opt/libiconv/bin:$PATH"
# export PATH="/opt/homebrew/opt/krb5/bin:$PATH"
# export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
# export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
# export PATH="/opt/homebrew/opt/tidy-html5/lib:$PATH"
# export PATH="/opt/homebrew/opt/gmp/lib:$PATH"

# export PKG_CONFIG_PATH="/opt/homebrew/opt/krb5/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libedit/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libjpeg/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libpng/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libxml2/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libzip/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/oniguruma/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/tidy-html5/lib/pkgconfig:$PKG_CONFIG_PATH"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/gmp/lib/pkgconfig:$PKG_CONFIG_PATH"

# export PHP_RPATHS="/opt/homebrew/opt/zlib/lib /opt/homebrew/opt/bzip2/lib /opt/homebrew/opt/curl/lib /opt/homebrew/opt/libiconv/lib /opt/homebrew/opt/libedit/lib"

# export PHP_BUILD_CONFIGURE_OPTS="
#     --disable-fpm
#     --with-bz2=$(brew --prefix bzip2)
#     --with-curl=$(brew --prefix curl)
#     --with-gettext=$(brew --prefix gettext)
#     --with-gmp=$(brew --prefix gmp)
#     --with-iconv=$(brew --prefix libiconv)
#     --with-icu_dir=$(brew --prefix icu4c)
#     --with-jpeg-dir=$(brew --prefix jpeg)
#     --with-libedit=$(brew --prefix libedit)
#     --with-libxml-dir=$(brew --prefix libxml2)
#     --with-libzip=$(brew --prefix libzip)
#     --with-png-dir=$(brew --prefix libpng)
#     --with-readline=$(brew --prefix readline)
#     --with-tidy=$(brew --prefix tidy-html5)
#     --with-xsl=$(brew --prefix libxslt)
#     --with-zlib-dir=$(brew --prefix zlib)
# "

    # --enable-intl
    # --with-pear

    # --with-external-pcre=$(brew --prefix pcre2)
    # --with-zip
    # --with-mcrypt=$(brew --prefix libmcrypt)
    # --disable-phpdgb
    # --enable-debaug
    # --with-kerberos

## available command
# neofetch

