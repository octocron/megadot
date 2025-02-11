#-------------aliases------------------------------------------------>>>
alias a="ansible"
alias ap="ansible-playbook"
alias d3="cd ~/projects/hugo/d3c3p7/"
alias ftldr='tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr'
alias grep='grep --color'
alias kg="killall gpg-agent || true; gpg-agent --daemon"
alias la="eza --group-directories-first -la"
alias ls="eza --icons --group-directories-first"
alias lt="eza -lhTL"
alias lsd="eza -D"
alias lg="eza -lh --git"
alias mostcli="history | awk '{print $2}' | sort | uniq -c | sort -nr | head -10"
alias reload="exec $SHELL -l"
alias vimcon="vim ~/.vimrc"
alias week='date +%V'
alias wttr="curl wttr.in"
#-------------end-of-line------------------------------------------->>>
