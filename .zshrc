# arm優先のための設定
typeset -U path PATH
path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /Library/Apple/usr/bin
)

plugins=(
  zsh-autosuggestions
)

# NOTE(okubo): autosuggestionsで必要
autoload -U compinit && compinit
# NOTE(okubo): 色を有効化
autoload -Uz colors && colors

export PATH="/usr/local/Cellar/git/2.5.0/bin:$PATH"

alias ide="~/.ide.sh"
alias t="arch -arm64 tmux"
alias tk="tmux kill-server"
alias arm="arch -arm64 zsh"

alias g="git"
alias gs="git switch"
alias delete-merged-branches="git branch --merged | grep -v main | xargs -I % git branch -d %"

# dir移動
alias a='cd ../'
alias aa='cd ../../'
alias aaa='cd ../../../'

# 履歴削除
alias c='clear'

# dockerとlocalのpsgl行き来するため
alias pgstart="brew services start postgresql"
alias pgstop="brew services stop postgresql"
alias mystart="mysql.server restart"

# docker系コマンド
alias d="docker compose"
alias de="docker compose exec"
alias dew="docker compose exec web"
alias dcu="docker compose up"
alias dcb="docker compose build --no-cache"
alias dclear="docker system prune -a"

# ios/android/flutter系
alias ios="open -a Simulator"
alias android="~/Library/Android/sdk/tools/emulator -avd Pixel_4_API_Tiramisu"

# heroku系コマンド
alias hi="heroku login"
alias hr="heroku run"

alias ctags="`brew --prefix`/bin/ctags"

# node ver+17 に使う
alias nop="export NODE_OPTIONS=--openssl-legacy-provider"
# git設定
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

# NeoVim
alias vim='nvim'
alias vi='nvim'

# M1の場合はこちららしい
export PATH="/opt/homebrew/bin:$PATH"

export PATH="/usr/local/opt/python@3.9/bin:$PATH"

# PostgreSQLの設定
export PGDATA=/usr/local/var/postgres
export PATH=/usr/local/opt/postgresql/bin:$PATH

# node(nvm)の設定
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# androidの設定
export ANDROID_SDK=/Users/masahirookubo/Library/Android/sdk
export PATH=/Users/masahirookubo/Library/Android/sdk/platform-tools:$PATH

# rs
export PATH="$HOME/.cargo/bin:$PATH"

# go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export GOPATH=$HOME/go;
export PATH=$PATH:$GOPATH/bin;

# terraform
export PATH="$HOME/.tfenv/bin:$PATH"

# swift設定
export TOOLCHAINS=swift

# nim
export PATH=/Users/masahirookubo/.nimble/bin:$PATH

# GnuPG, ecs cli
export PATH=$PATH:/opt/homebrew/Cellar/gnupg/2.3.6

export PATH="$(brew --prefix openssl@1.1)/bin:$PATH"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

eval "$(rbenv init -)"

# Google Cloud CLI
export PATH="/Users/masahirookubo/google-cloud-sdk/bin:$PATH"
export CLOUDSDK_PYTHON_SITEPACKAGES=1
# llvm
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

# export DYLD_LIBRARY_PATH="/opt/homebrew/opt/llvm/lib/:$DYLD_LIBRARY_PATH"
