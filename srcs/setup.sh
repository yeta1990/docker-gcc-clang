
#source ../config
#envsubst < docker-compose-template > docker-compose.yml

if [ ! -f clang+llvm-15.0.6-x86_64-linux-gnu-ubuntu-18.04.tar.xz ] && [ ! -f clang.tar.xz ] 
then
	curl -kL --output clang.tar.xz https://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.6/clang+llvm-15.0.6-x86_64-linux-gnu-ubuntu-18.04.tar.xz
fi

if [ ! -d clang_15 ]
then
 	tar -xvf "clang.tar.xz" && \
	mv clang+llvm-15.0.6-x86_64-linux-gnu-ubuntu-18.04 clang_15
fi


