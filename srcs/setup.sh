###########

#replace the content of this variable to the path of the folder you want to work with
DLC_WORK_DIR="$HOME/Documents/ft_containers"

##############

sed -i '' 's|replace_me|'"$DLC_WORK_DIR"'|g' docker-compose.yml

if [ ! -f clang+llvm-15.0.6-x86_64-linux-gnu-ubuntu-18.04.tar.xz ] && [ ! -f clang.tar.xz ]
then
	curl -kL --output clang.tar.xz https://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.6/clang+llvm-15.0.6-x86_64-linux-gnu-ubuntu-18.04.tar.xz && \
 	tar -xvf "clang.tar.xz" && \
	mv clang+llvm-15.0.6-x86_64-linux-gnu-ubuntu-18.04 clang_15
fi


