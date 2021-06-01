# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/megacron/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# af-magic bira gnzh muse mortalscumbag miloshadzic
# pygmalion rkj-repos robbyrussell smt sporty_256 steeef
ZSH_THEME="rkj-repos"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#-------------key-bindings----------------------------->>>
# keybind '^ ' autosuggest-accept # accept current suggestion
# keybind 'F2' autosuggest-clear # clears current suggestion

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

#-------------aliases---------------------------------->>>
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconfig="vim ~/.vimrc"

# menu shortcut
alias mm="megamenu.sh"

# polite logoff remote
alias later="logout"

# watch 8bit starwars
alias starwars="nc towel.blinkenlights.nl 23"

# start watching sass project
alias sw="sass --watch sass/app.sass:css/app.css --style expanded"
alias swc="sass --watch sass/app.sass:css/app.css --style compressed"

# only list  directories
alias lsd="ls -lFh ${colorflag} | grep --color=never '^d'"

# enable aliases to be sudo’ed
alias sudo='sudo '

# get week number
alias week='date +%V'

# load color scheme into ls
alias ls='ls -G'

# get ip addresses
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias mylocalip="ipconfig getifaddr en0"

# show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# reload the shell
alias reload="exec ${SHELL} -l"

#-------------history---------------------------------->>>
SAVEHIST=100000 # number of entries
HISTSIZE=100000
setopt APPEND_HISTORY # dont erase history
setopt HIST_SAVE_NO_DUPS # dont write duplicates 
setopt HIST_IGNORE_ALL_DUPS # delete old duplicates
setopt SHARE_HISTORY # share history between terminals
setopt HIST_FIND_NO_DUPS # dont show prev found line

#-------------end-of-file------------------------------>>>
