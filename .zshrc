# ALIAS
alias ..='cd ..'
alias ....='cd ../..'

alias la-la='la-la'

alias cls='clear'

alias look='find . -name'
alias search='grep --color -rnw ./ -e '
alias ports='lsof -PiTCP -sTCP:LISTEN'
alias speedtest='wget -O /dev/null cachefly.cachefly.net/100mb.test'

# GIT
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gb-delete='git branch -D'

alias gpull='git pull'
alias gpush='git push'
alias gpush-force='git push --force'

alias gfetch='git fetch'
alias gfetch-prune='git fetch --prune'
alias gfp='git fetch --prune'

alias ga='git add .'
alias ga.='git add .'

alias gc='git commit -m'
alias gcf='git commit --no-verify -m'
alias gc-force='git commit --no-verify -m'

alias gcommit='git commit -m'
alias gcommit-force='git commit --no-verify -m'

alias gstash='git stash'
alias gstash-apply='git stash apply'
alias gstash-clear='git stash clear'

alias gr='git rebase'
alias gr-xours='git rebase -Xours'
alias gr-xtheirs='git rebase -Xtheirs'
alias gr-continue='git rebase --continue'
alias gr-abort='git rebase --abort'

alias grebase='git rebase'
alias grebase-xours='git rebase -Xours'
alias grebase-xtheirs='git rebase -Xtheirs'
alias grebase-continue='git rebase --continue'
alias grebase-abort='git rebase --abort'

alias downloads='cd ~/Downloads'
alias documents='cd ~/Documents'

alias g-mlicciardi='cd ~/git-mlicciardi'

alias g-tengroup='cd ~/git-tengroup'
alias g-tengroup-tpd='cd ~/git-tengroup/tenplatform-frontend'

alias code-zsh='code ~/git-mlicciardi/zshrc.code-workspace'
alias code-zsh='code ~/git-mlicciardi/mlicciardi.github.io.code-workspace'

alias code-tpd='code ~/git-tengroup/tenplatform-frontend.code-workspace'

alias .zsh-pull='curl -o ~/.zshrc https://raw.githubusercontent.com/mlicciardi/zshrc/master/.zshrc'
alias .zsh-load='source ~/.zshrc'

# VSCODE
vscodeWorkspace() {
  echo "{ 'folders': [ { 'path': '$1' } ], 'settings': { 'files.associations': {} } }" >> "$1.code-workspace"
}

# NPM
alias auditfix='npm audit fix'
alias auditfix-force='npm audit fix --force'

# YARN
alias y='yarn'
alias ya='yarn add'
alias ys='yarn start'
alias yl='yarn lint'
alias yt='yarn test'
alias yb='yarn build'
alias yo='yarn outdated'

alias y-load='clear && yarn cache clean && yarn'
alias y-nuke='clear && rm -R -f node_modules && yarn cache clean && yarn'
alias y-nuke-auditfix='clear && rm -R -f node_modules && yarn cache clean && yarn && npx yarn-audit-fix'

alias yl-ci='yarn lint:ci'
alias yt-ci='yarn test:ci'
alias yb-ci='yarn build:ci'

# TEN
alias ssh-ten='ssh mattialicciardi@34.254.165.109 -i ~/.ssh/vpn_rsa'

# TEN QA
alias ystart-qa-absa='clear && yarn start-qa-absa'
alias ystart-qa-coutts='clear && yarn start-qa-coutts'
alias ystart-qa-dbs='clear && yarn start-qa-dbs'
alias ystart-qa-discover-digital='clear && yarn start-qa-discover-digital'
alias ystart-qa-discover-premium='clear && yarn start-qa-discover-premium'
alias ystart-qa-dnb='clear && yarn start-qa-dnb'
alias ystart-qa-hsbc-jade='clear && yarn start-qa-hsbc-jade'
alias ystart-qa-mastercard-rak='clear && yarn start-qa-mastercard-rak'
alias ystart-qa-mastercard='clear && yarn start-qa-mastercard'
alias ystart-qa-sjp='clear && yarn start-qa-sjp'
alias ystart-qa-stgeorge='clear && yarn start-qa-stgeorge'
alias ystart-qa-swisscard-platinum='clear && yarn start-qa-swisscard-platinum'
alias ystart-qa-ten='clear && yarn start-qa-ten'
alias ystart-qa-visa-cemea='clear && yarn start-qa-visa-cemea'
alias ystart-qa-visa-lac='clear && yarn start-qa-visa-lac'
alias ystart-qa-vodafone='clear && yarn start-qa-vodafone'
alias ystart-qa-westpac='clear && yarn start-qa-westpac'

# TEN STAGING
alias ystart-staging-absa='clear && yarn start-staging-absa'
alias ystart-staging-coutts='clear && yarn start-staging-coutts'
alias ystart-staging-dbs='clear && yarn start-staging-dbs'
alias ystart-staging-discover-digital='clear && yarn start-staging-discover-digital'
alias ystart-staging-discover-premium='clear && yarn start-staging-discover-premium'
alias ystart-staging-dnb='clear && yarn start-staging-dnb'
alias ystart-staging-hsbc-jade='clear && yarn start-staging-hsbc-jade'
alias ystart-staging-mastercard-rak='clear && yarn start-staging-mastercard-rak'
alias ystart-staging-mastercard='clear && yarn start-staging-mastercard'
alias ystart-staging-sjp='clear && yarn start-staging-sjp'
alias ystart-staging-stgeorge='clear && yarn start-staging-stgeorge'
alias ystart-staging-swisscard-platinum='clear && yarn start-staging-swisscard-platinum'
alias ystart-staging-ten='clear && yarn start-staging-ten'
alias ystart-staging-visa-cemea='clear && yarn start-staging-visa-cemea'
alias ystart-staging-visa-lac='clear && yarn start-staging-visa-lac'
alias ystart-staging-vodafone='clear && yarn start-staging-vodafone'
alias ystart-staging-westpac='clear && yarn start-staging-westpac'

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# LOAD GIT COMPLETION
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# RUBY
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
eval "$(rbenv init -)"

#POWERLEVEL9K MODE
POWERLEVEL9K_MODE=nerdfont-complete

# POWERLEVEL9K SRC
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

#POWERLEVEL9K SETTINGS
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "

DEFAULT_USER='Mattia'

# LEFT_PROMPT
# ===========================================================
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=''

POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='none'
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='red'
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND='red'
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND='yellow'
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND='none'
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND='red'
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND='none'

POWERLEVEL9K_DIR_HOME_FOREGROUND='blue'
POWERLEVEL9K_DIR_HOME_BACKGROUND='none'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='none'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='red'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='none'
POWERLEVEL9K_DIR_ETC_FOREGROUND='yellow'
POWERLEVEL9K_DIR_ETC_BACKGROUND='none'

# vcs
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='none'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='none'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='none'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'

# RIGHT_PROMP
# ===========================================================
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''

POWERLEVEL9K_TIME_BACKGROUND='none'
POWERLEVEL9K_TIME_FOREGROUND='yellow'
