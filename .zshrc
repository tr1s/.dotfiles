# Environment variables and exports
# ------------------------------------------------------------------------------

export ZSH=$HOME/.oh-my-zsh
export EDITOR=cursor
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Oh My Zsh Initialization
# ------------------------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# User Customizations
# ------------------------------------------------------------------------------

# Theme (currently using starship prompt instead of zsh-theme)
# ZSH_THEME=""

# Plugins
plugins=(git zsh-nvm zsh-syntax-highlighting)

# Aliases
alias update="source ~/.zshrc"  # Reload ZSH configuration
alias bb='brew update; brew upgrade; brew cleanup; brew doctor'
alias c="clear"
alias cd="z"
alias start="bun run dev"
alias cstart="cursor . && bun run dev"
alias nvmstart="nvm use && cursor . && npm run dev"
alias bd="bun run dev"
alias cbd="cursor . && bun run dev"
alias nd="npm run dev"
alias cnd="code . && npm run dev"
alias bl="brew list"
alias l="colorls --group-directories-first --almost-all"
alias ll="colorls --group-directories-first --almost-all --long"
alias updatepackages="npx npm-check-updates -u"
alias updatenpm="nvm install-latest-npm"


# Functions & Hooks
# ------------------------------------------------------------------------------

# Set the tab title to the current directory name before each prompt and on directory change.
function setTabTitle() {
  print -Pn "\e]0;${PWD##*/}\a"
}
add-zsh-hook precmd setTabTitle
add-zsh-hook chpwd setTabTitle


# Miscellaneous Initializations
# ------------------------------------------------------------------------------

# zoxide (reference: https://youtu.be/aghxkpyRVDY):
eval "$(zoxide init zsh)"

# Starship prompt
eval "$(starship init zsh)"
