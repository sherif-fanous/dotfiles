# -----------------------------
# Oh My Zsh Configuration
# -----------------------------
zstyle ':completion:*' completer _expand_alias _complete _ignored
zstyle ':omz:update' frequency 1
zstyle ':omz:update' mode prompt

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
plugins=(
  docker
  fzf-tab
  gcloud
  github
  golang
  kubectl
  macos
  npm
  nvm
  perl
  pip
  pyenv
  python
  rust
  terraform
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# -----------------------------
# Aliases
# -----------------------------
alias assume="source assume"
alias ll="ls -ahlG"
alias ls="ls -ahG"
alias mkdir="mkdir -p"

# ---------------------
# Command Completions
# ---------------------
[[ -f "$(brew --prefix)/etc/bash_completion.d/az" ]] && source "$(brew --prefix)/etc/bash_completion.d/az"
[[ -f "$(brew --prefix)/etc/bash_completion.d/wg" ]] && source "$(brew --prefix)/etc/bash_completion.d/wg"
[[ -f "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc" ]] && source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# -----------------------------
# Exports
# -----------------------------
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH:$HOME/.local/bin:$HOME/go/bin"

# -----------------------------
# Fabric
# -----------------------------
[[ -f "$HOME/.config/fabric/fabric-bootstrap.inc" ]] && source "$HOME/.config/fabric/fabric-bootstrap.inc"

# -----------------------------
# NVM (Node Version Manager)
# -----------------------------
export NVM_DIR="$HOME/.nvm"
[[ -s "/opt/homebrew/opt/nvm/nvm.sh" ]] && source "/opt/homebrew/opt/nvm/nvm.sh"

# -----------------------------
# Starship Prompt
# -----------------------------
if [[ $TERM_PROGRAM == "WarpTerminal" ]]; then
  export STARSHIP_CONFIG="$HOME/.config/starship_warp.toml"
fi
command -v starship &>/dev/null && eval "$(starship init zsh)"

# -----------------------------
# Zoxide
# -----------------------------
command -v zoxide &>/dev/null && eval "$(zoxide init --cmd cd zsh)"
