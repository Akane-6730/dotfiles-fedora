# Completion System
autoload -Uz compinit && compinit

# Completion Options
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'   # Case-insensitive
zstyle ':completion:*' menu select                         # Arrow-key menu
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"    # Colored completions
