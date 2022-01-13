
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#------------------
# Theme
#------------------
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="sunrise"
# ZSH_THEME="edvardm"
ZSH_THEME="minimal"

#------------------
# Plugins
#------------------
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git zsh-nvm zsh-syntax-highlighting z)

# why is this here? What are the consequences of things being before or after here?
source $ZSH/oh-my-zsh.sh

# User configuration

#------------------
# Shell Variables
#------------------
# how does this work? how do you know to choose code-insiders and not vscode-whatever
export EDITOR=code

# Set the tab title to the current working directory before each prompt
function tabTitle () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}

# Executes load-nvmrc when the present working directory (pwd) changes
# add-zsh-hook chpwd load-nvmrc
# Executes tabTitle before each prompt
add-zsh-hook precmd tabTitle

#------------------
# Aliases
#------------------
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Re-run source command on .zshrc to update current terminal session with new settings
alias update="source ~/.zshrc"
alias bb='brew update; brew upgrade; brew cleanup; brew doctor'
alias c="clear"
alias code="code"
alias nd="npm run dev"
alias ned="netlify dev"
alias nedl="netlify dev --live"
alias bl="brew list"
alias l="colorls --group-directories-first --almost-all"
alias ll="colorls --group-directories-first --almost-all --long"
alias updatepackages="npx npm-check-updates -u"


#------------------
# Miscellaneous
#------------------

# Stops the percentage sign from appearing on first load in hyper
# Ref = https://github.com/zeit/hyper/issues/2144#issuecomment-326741620
unsetopt PROMPT_SP

# Allows Ruby(rbenv) & colorls to work, ref below
# https://stackoverflow.com/questions/58303940/macos-catalina-error-after-update-unable-to-run-colorls/58310557#58310557
eval "$(rbenv init -)"


# https://github.com/nvbn/thefuck
eval $(thefuck --alias)

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
