# --- FZF Configuration ---

# Load key bindings and completion
if [ -f /usr/share/fzf/shell/key-bindings.zsh ]; then
    source /usr/share/fzf/shell/key-bindings.zsh
fi
if [ -f /usr/share/fzf/shell/completion.zsh ]; then
    source /usr/share/fzf/shell/completion.zsh
fi

# Use fd (find alternative) instead of find
# --hidden: Search hidden files/directories (but respect .ignore)
# --follow: Follow symlinks
# --exclude .git: Always exclude .git directory
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git"

# Default FZF Options (Layout & Preview)
# --height 40%: Don't take up the whole screen
# --layout=reverse: Input at the top
# --border: Nice border
export FZF_DEFAULT_OPTS="
  --height 40%
  --layout=reverse
  --border
  --info=inline
  --pointer='➜'
  --marker='✓'
  --bind 'ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down'
  --color='bg+:-1,gutter:-1,pointer:cyan,marker:green,spinner:magenta,header:blue'"

# Preview Options for File Search (Ctrl-T)
export FZF_CTRL_T_OPTS="
  --preview 'bat --style=numbers --color=always --line-range :500 {}'
  --preview-window 'right:60%'"

# Preview Options for Directory Search (Alt-C)
export FZF_ALT_C_OPTS="
  --preview 'tree -C {} | head -200'
  --preview-window 'right:50%'"

# --- ZSH Plugins (System Installed) ---
# Autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax Highlighting (must be last)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
