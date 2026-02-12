# Language & Editor
export LANG=en_US.UTF-8
export EDITOR="emacs -Q -nw -l ~/.emacs.d/init-mini.el"

# Manpath
export MANPATH="/usr/local/man:$MANPATH"

# --- PATH Configuration ---

# User Local Binaries
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Language Tools
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/usr/local/smlnj/bin"

# Application Scripts (Append)
export PATH="$PATH:/home/akane/.local/share/JetBrains/Toolbox/scripts"

# Deduplicate PATH (Remove redundant entries)
typeset -U PATH
