# -----------------------------
# Oh My Zsh Configuration
# -----------------------------
export CASE_SENSITIVE=true
export COMPLETION_WAITING_DOTS=true
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CACHE_DIR="$ZSH/cache"
export ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"

export EDITOR="vim"
export KUBECONFIG="$(find ~/.kube/config -type f -name '*' -print | tr '\n' ':' | sed 's/:$//')"
export SOPS_AGE_KEY_FILE="$HOME/.sops/keys.txt"
export VISUAL="vim"
