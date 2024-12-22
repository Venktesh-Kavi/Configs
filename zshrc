# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Load .zshenv if it exists
[ -f $HOME/.zshenv ] && source $HOME/.zshenv

# Load Powerlevel10k instant prompt if it exists
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  git
  brew
)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration

# Multi line editing in zsh
export EDITOR=vim
autoload -U edit-command-line
#zsh line edit module
zle -N edit-command-line
bindkey '^xe' edit-command-line


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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files under VCS as dirty.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time stamp shown in the history command output.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Set PATH
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Enable Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add SDKMAN to PATH
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Add RVM to PATH
export PATH="$PATH:$HOME/.rvm/bin"

# Additional PATH configurations
export PATH=$PATH:/usr/local/opt/liquibase
export PATH=$PATH:/opt/gradle/gradle-7.5.1/bin
export PATH="/usr/local/opt/libpq/bin:$PATH"

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# Environment variables
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"

# Local env variables
export CODEARTIFACT_AUTH_TOKEN=eyJ2ZXIiOjEsImlzdSI6MTczMTA1NzU2MiwiZW5jIjoiQTEyOEdDTSIsInRhZyI6Ikt1ci1nYzhBaDN4ZzhoMDZ4OVlZR3ciLCJleHAiOjE3MzExMDA3NjIsImFsZyI6IkExMjhHQ01LVyIsIml2IjoiWURWVTB2S21tbFlqUzFMUSJ9.pXFk9C-Vpi6g-OjflesmLQ.whs_2xzkY1z9f_Sm.y83VHFC-RxuibjWBFdMrKikHt8H4qvdn8a0vT0SILjw4I_8p_SWPNdgVcGfwc5zqpWYIBFrwNXtMCsda_-SiKvV0jZM1vF3MGEgfiiHDB3uHbhuCg7yntybBO_G5VIuug2dRfJkJDHJA2WynYedeP_Y_4ctmDz1K79-fx5JbB4fl1v5h-KDmtKhXY2rzt3aeesCoUBJYbmaIqzRKfz0OUcVuKQXuzzM-afT1LWlnzAo7zOMPSqX3vXH9NJ8K5aMV_l_cmjpqYuSaFGUaRXz6Ik19K0pX3e6V8x_uzt4Hiyt5Zky4F91wwLio_aVQ8JxXW7gO5e-a8ZD6T59Z64zCkON2dwj7-AL3W2GIa8jO25klrhnc-u1XCa_PoaiDkGxYmx7YyUIgkho8KqJ8m0sVYAOQagaRaTiOIE_uCtg7hhzI8c6n-xRwW9qJLDWYMhCxa8y6eW-Mp71XWPMPSux-EjgzwLE_zKFUMaweo70n-mPrDfVCIAKNQm976MCJFx5np6xv4C3iH6-hbXmkikd1oadXNUEBFvxsJbHK9ZdEy1TRUjG1xilDO7xHXlP_duoQ2NvYLwtuNiWZaGewUUNzFHz0J6S6He2g2ONJe7fK6ArgBa_LnaTJ-K6OopQZpWF-c8dTfDRlpnH1bPOQP2vuVEe981X3djtAkpSc-KJy_u4ETrwa9_RHbWcGp-ROKuuxMqPC651wgnW518nsOTons7FIhCntCXYEOjemwqu_81k-Lh98CZ5gDCMwvB0K9wnLfRX1vlJWYQ1nlhEG7MNEM2yQV8mFCvb_1BcLhROZQCIP_cUzMMClNYcopswaGl9LV2eyCrj0mhMVvOYnk8Ef-_r26y9GIsa5ngI7BnNnz5RPQgt-TsRJFcpRslXMtLlJRSi5siVY9uxyhCa2w-ElZ00wx-WxzGFv9MgtKBJCg5mItelJH9ka9_u-YloYsnvGZOJ8zFk2YjC1pJXMGW7rsRQx98OYFfD1eo19GlP98gZYBHqlbXTwxhYSqe0hWJJ4LeT1GntJCoferQTbVdz12EsocdvYf_lQCWn8iH08bYxN9smU_c1LtPLWwahdxVokmmt0XCWKLoAmerPSGG3SgDyTdS1FXMfl9679pzhuRlcCnGw-w53LFYrBRNTp5IsXE4ojMKKhX-fVzw3E_1japU_4Hpx6kvdc330dFyzfz9arK6g_n6jCzIJWdAab1tBP5hWLHiZtWPoobqnZ93_C6vg9VuFEUmXeRWpCl6JXfXr5kVruRvvlKqv1AsVgh_0G.eq_itjmtnV1XaPeObqMEJg
export TEMPORAL_DIR=/Users/venktesh.k/dev/personal/oss/temporal/docker-compose

# GO
export GOROOT=$HOME/go
export GOPATH=$HOME/go

# Aliases
alias mdb_start="brew services start mongodb-community@5.0"
alias mdb_stop="brew services stop mongodb-community@5.0"
alias c="clear"
alias spa="./gradlew spotlessApply"
alias gcb="./gradlew clean build"
alias ..="cd .."
alias cat="bat"
alias gitr="git restore ."
alias gitclr="git clean -fd"
alias gits="git stash"
alias gita="git add -u"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
