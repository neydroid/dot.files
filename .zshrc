# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/neydroid/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git wd git-extras git-flow docker)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Fastlane
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="$HOME/.fastlane/bin:$PATH"

alias a="atom ."
alias x="xcopen"
alias cat="ccat"
alias vim="nvim"
alias e='open -a Emacs --args --chdir $PWD "$@"'

# Rails Aliases
alias rdbm='rails db:migrate'
alias rdbc='rails db:create'
alias rdbd='rails db:drop'
alias rdbr='rails db:rollback'
alias rdbs='rails db:setup'
alias rgmi='rails generate migration'
alias rc='rails console'

# Git Aliases
alias gfrs='git flow release start'
alias gfre='git flow release finish'

# Elixir Aliases
alias mxps='mix phx.server'
alias mxpr='mix phx.routes'
alias mxec='mix ecto.create'
alias mxem='mix ecto.migrate'
alias mxed='mix ecto.drop'
alias mxer='mix ecto.reset'

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s "/Users/neydroid/.scm_breeze/scm_breeze.sh" ] && source "/Users/neydroid/.scm_breeze/scm_breeze.sh"

# Python
eval "$(pyenv init -)"

# Golang
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Crystal
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

# Flutter
export PATH=~/flutter/bin:$PATH

source "/Users/neydroid/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/neydroid/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# ZSH
fpath=(/usr/local/share/zsh-completions $fpath)

# Anaconda
export PATH=/Users/neydroid/anaconda3/bin:$PATH

function chpwd() {
  ls -la
}

function precmd() {
}


