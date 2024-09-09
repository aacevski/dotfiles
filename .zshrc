# oh-my-zsh Setup
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Variables
export VISUAL=nvim
export EDITOR=nvim
export TERM="tmux-256color"
export BROWSER="firefox"

# Aliases
alias ls='ls --color=auto'
alias la='ls -lathr'
alias syu='sudo pacman -Syu'
alias gp='git pull'
alias gs='git status'
alias lg='lazygit'

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

# Bun 
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Fnm
FNM_PATH="/home/andrej/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/andrej/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# Macchina
macchina
