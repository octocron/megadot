# place in ~
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/git.zsh ]] && source ~/.zsh/git.zsh
[[ -f ~/.zsh/history.zsh ]] && source ~/.zsh/history.zsh
[[ -f ~/.zsh/nix.zsh ]] && source ~/.zsh/nix.zsh
[[ -f ~/.zsh/nvims.zsh ]] && source ~/.zsh/nvims.zsh
[[ -f ~/.zsh/osx.zsh ]] && source ~/.zsh/osx.zsh
[[ -f ~/.zsh/plugins.zsh ]] && source ~/.zsh/plugins.zsh
[[ -f ~/.zsh/sopsnix.zsh ]] && source ~/.zsh/sopsnix.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/teleport.zsh ]] && source ~/.zsh/teleport.zsh

# load cli tools
eval "$(thefuck --alias)"
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
