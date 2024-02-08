#-------------installs----------------------------------------------->>>
# git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/AstroNvim
# git clone --depth 1 https://github.com/NvChad/NvChad ~/.config/NvChad
# git clone https://github.com/LazyVim/starter ~/.config/LazyVim
# git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/kickstart
#-------------nvims-------------------------------------------------->>>
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"
alias nvim-chad="NVIM_APPNAME=NvChad nvim"
alias nvim-kick="NVIM_APPNAME=kickstart nvim"
alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"

function nvims() {
  items=("default" "AstroNvim" "NvChad" "kickstart" "LazyVim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

bindkey -s ^s "nvims\n"
#-------------end-of-line------------------------------------------->>>
