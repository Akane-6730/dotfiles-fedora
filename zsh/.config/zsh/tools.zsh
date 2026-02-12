# Linuxbrew
# Mirror Configuration (Tuna)
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"

# Must be loaded early to ensure brew binaries are in PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# opam (OCaml)
[[ ! -r '/home/akane/.opam/opam-init/init.zsh' ]] || source '/home/akane/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null

# ghcup (Haskell)
[ -f "/home/akane/.ghcup/env" ] && . "/home/akane/.ghcup/env"
