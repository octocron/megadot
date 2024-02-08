# place in ~
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/history.zsh ]] && source ~/.zsh/history.zsh
[[ -f ~/.zsh/nvims.zsh ]] && source ~/.zsh/nvims.zsh
[[ -f ~/.zsh/osx.zsh ]] && source ~/.zsh/osx.zsh
[[ -f ~/.zsh/plugins.zsh ]] && source ~/.zsh/plugins.zsh
[[ -f ~/.zsh/teleport.zsh ]] && source ~/.zsh/teleport.zsh
[[ -f ~/.zsh/nix.zsh ]] && source ~/.zsh/nix.zsh

# Load Starship
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
