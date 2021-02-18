export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.gem/ruby/2.7.0/bin
export PATH=$PATH:~/.cargo/bin

export CM_LAUNCHER=rofi
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANWIDTH=999
export EDITOR=nvim
export VISUAL=nvim
export LC_TIME="de_DE.UTF-8"
export CF_COLOR=true
export _JAVA_AWT_WM_NONREPARENTING=1


complete -C /usr/bin/packer packer
complete -C /home/julius/go/bin/bitcomplete bit
export GOPATH=$HOME/go
PATH=$GOPATH/bin:$PATH
