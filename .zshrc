# ALIAS
alias ..='cd ..'
alias ....='cd ../..'

alias cls='clear'

alias g='git'
alias gb='git branch'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gc='git commit -m'

alias downloads='cd ~/Downloads'
alias documents='cd ~/Documents'

alias g-mlicciardi='cd ~/git-mlicciardi'
alias g-tengroup='cd ~/git-tengroup'
alias g-tengroup-tpd='cd ~/git-tengroup/tenplatform-frontend'

alias y='yarn'
alias ya='yarn add'
alias ys='yarn start'
alias yl='yarn lint'
alias yt='yarn test'
alias yb='yarn build'
alias yo='yarn outdated'
alias y-load='yarn cache clean && yarn'
alias y-nuke='rm -R node_modules && yarn cache clean && yarn'

alias yl-ci='yarn lint:ci'
alias yt-ci='yarn test:ci'
alias yb-ci='yarn build:ci'

alias ystart-qa='yarn start-qa'
alias ystart-qa-ten='yarn start-qa-ten'
alias ystart-qa-coutts='yarn start-qa-coutts'
alias ystart-qa-mastercard='yarn start-qa-mastercard'

alias ystart-staging='yarn start-staging'
alias ystart-staging-ten='yarn start-staging-ten'
alias ystart-staging-coutts='yarn start-staging-coutts'
alias ystart-staging-mastercard='yarn start-staging-mastercard'

alias look='find . -name'
alias search='grep --color -rnw ./ -e '
alias ports='lsof -PiTCP -sTCP:LISTEN'
alias speedtest='wget -O /dev/null cachefly.cachefly.net/100mb.test'

# LOAD GIT COMPLETION
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

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
