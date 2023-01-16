#-------------history------------------------------------------------>>>
export HISTFILE=~/.zsh_history
export SAVEHIST=100000              # number of commands stored in file
export HISTSIZE=100000              # number of commands loaded into memory from file
setopt APPEND_HISTORY               # dont erase history
setopt HIST_SAVE_NO_DUPS            # dont write duplicates
setopt HIST_IGNORE_ALL_DUPS         # delete old duplicates
setopt SHARE_HISTORY                # share history between terminals
setopt HIST_FIND_NO_DUPS            # dont show previous duplicates in find
#setopt INC_APPEND_HISTORY           # commands written to history immediately; turn off if using SHARE_HISTORY
export HISTTIMEFORMAT="[%F %T] "    # format timestamp
setopt EXTENDED_HISTORY             # record timestamp in HISTFILE
#-------------end-of-line------------------------------------------->>>