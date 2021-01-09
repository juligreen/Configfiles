

zoxide init fish | source
starship init fish | source

set fish_hybrid_key_bindings
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

# fenv source ~/.bashrc

direnv hook fish | source
