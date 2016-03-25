#!/usr/bin/env bash

# Load RVM, if you are using it
#[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add rvm gems and nginx to the path
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='powerline-multiline'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR="/usr/bin/vim"
export GIT_EDITOR='/usr/bin/vim'

# Set the path nginx
#export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK


# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# thefuck
eval "$(thefuck --alias)"

# Load Bash It
source $BASH_IT/bash_it.sh

# homebrew
source $(brew --repository)/Library/Contributions/brew_bash_completion.sh

# Override Todo.txt cfg
export TODO_DIR=/Users/rix/Development/Workspaces/todo
export TODO_ACTIONS_DIR=$TODO_DIR/.todo.actions.d
alias $TODO='$TODO_SRC_DIR/todo.sh -n -c -d $TODO_DIR/todo.cfg'

POWERLINE_PROMPT_USER_INFO_MODE="sudo"
POWERLINE_LEFT_PROMPT="scm cwd"
POWERLINE_RIGHT_PROMPT="in_vim user_info"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
  
if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi

export ANDROID_HOME=/Applications/android-sdk-macosx
export SCALA_HOME=/usr/local/Cellar/scala/2.11.4
export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk
export DART_SDK=/usr/local/opt/dart/libexec
export DARTIUM_BIN=/usr/local/opt/dart/Chromium.app/Contents/MacOS/Chromium
export RUST_IOS_HOME=/Users/rix/Development/Workspaces/mozilla/rust-ios-build

export PATH=$PATH:/Applications/android-sdk-macosx/tools:/Applications/android-sdk-macosx/tools:/Applications/android-sdk-macosx/platform-tools:$SCALA_HOME/bin 
export PATH=$PATH:$DART_SDK/bin
export PATH="/usr/local/sbin:$PATH"
