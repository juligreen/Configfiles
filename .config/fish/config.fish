

zoxide init fish | source
starship init fish | source

set fish_hybrid_key_bindings
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

# fenv source ~/.bashrc

direnv hook fish | source
# GoLang
set GOROOT '/home/julius/.go'
set GOPATH '/home/julius/go'
set PATH $GOPATH/bin $GOROOT/bin $PATH
