# --- Dumb terminal guard ---
if [[ "$TERM" == "dumb" ]]; then
    export PS1='$ '
    unsetopt zle 2>/dev/null
    return
fi

# --- Modular Configuration ---
ZSH_CONFIG_DIR="$HOME/.config/zsh"

# Environment & Tools (Sets PATH, brew shellenv, etc.)
source "$ZSH_CONFIG_DIR/env.zsh"
source "$ZSH_CONFIG_DIR/tools.zsh"

# Zsh Core (History, Completion)
source "$ZSH_CONFIG_DIR/history.zsh"
source "$ZSH_CONFIG_DIR/completion.zsh"

# User Config (Aliases, Functions)
source "$ZSH_CONFIG_DIR/aliases.zsh"
source "$ZSH_CONFIG_DIR/functions.zsh"

# Plugins (FZF, Autosuggestions, Syntax Highlighting)
source "$ZSH_CONFIG_DIR/plugins.zsh"

# --- Starship Prompt ---
eval "$(starship init zsh)"
