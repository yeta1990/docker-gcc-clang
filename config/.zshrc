export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# xterm configuration
export TERM=xterm-256color

# clang configuration
export ASAN_SYMBOLIZER_PATH=/usr/lib/llvm-6.0/bin/llvm-symbolizer
export PATH=/clang_15/bin:$PATH
export LD_LIBRARY_PATH=/clang_15/lib:$LD_LIBRARY_PATH

# User configuration
alias ce='gcc -Wall -Wextra -Werror'
alias cw='gcc -Wall -Wextra'
alias csanitize='gcc -Wall -Wextra -Werror -fsanitize=address'

alias g='g++ -Wall -Wextra -Werror'
alias c='clang++ -Wall -Wextra -Werror'
alias e='g srcs/test*.cpp > /dev/pts/1; c srcs/test*.cpp > /dev/pts/2'
