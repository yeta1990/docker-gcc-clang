#https://baykara.medium.com/installing-clang-10-in-a-docker-container-4c24a4538af2

FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install -y \
 xz-utils \
 curl \
 build-essential \
 && rm -rf /var/lib/apt/lists/*

# RUN curl -SL https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz \
 #| tar -xJC . && \
 #mv clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04 clang_10 && \
# echo "export PATH=/clang_10/bin:$PATH" >> ~/.bashrc && \
# echo "export LD_LIBRARY_PATH=/clang_10/lib:$LD_LIBRARY_PATH" >> ~/.bashrc

RUN curl -SL https://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.6/clang+llvm-15.0.6-x86_64-linux-gnu-ubuntu-18.04.tar.xz \
 | tar -xJC . && \
 mv clang+llvm-15.0.6-x86_64-linux-gnu-ubuntu-18.04 clang_15 && \
 echo "export PATH=/clang_15/bin:$PATH" >> ~/.bashrc && \
 echo "export LD_LIBRARY_PATH=/clang_15/lib:$LD_LIBRARY_PATH" >> ~/.bashrc

CMD [ "/bin/bash" ]
