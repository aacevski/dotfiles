# oh-my-zsh Setup
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git zsh-autosuggestions)

# Scripts
export PATH="$HOME/.config/scripts:$PATH"

# Starship 
eval "$(starship init zsh)"

# Zoxide
export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init zsh)"

# Macchina
macchina
