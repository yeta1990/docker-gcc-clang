#https://baykara.medium.com/installing-clang-10-in-a-docker-container-4c24a4538af2

#FROM ubuntu:latest
FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
 curl \
 build-essential \
 zsh \
 fontconfig \
 zip \
 git \
 clang \
 vim \
 valgrind \
 neofetch \
 readline-common \
 libreadline-dev \
 && rm -rf /var/lib/apt/lists/*

RUN cd ~ && curl -SL --output Meslo.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip && \
	mkdir -p .fonts && \
	unzip Meslo.zip -d .fonts && \
	cd .fonts && \
	rm *Windows* && \
	cd ~ && \
	rm Meslo.zip && \
	fc-cache -fv

RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k && \
	echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc && \
	echo '[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh' >> ~/.zshrc

ADD powerlevel10k.zsh-theme ~/powerlevel10k/powerlevel10k.zsh-theme
ADD .p10k.zsh /root/.p10k.zsh
RUN echo "export PATH=/clang_15/bin:$PATH" >> ~/.zshrc && \
 echo "export LD_LIBRARY_PATH=/clang_15/lib:$LD_LIBRARY_PATH" >> ~/.zshrc && \
 echo "export TERM=xterm-256color" >> ~/.zshrc && \
 echo "alias g='g++ -Wall -Wextra -Werror'" >> ~/.zshrc && \
 echo "alias c='clang++ -Wall -Wextra -Werror'" >> ~/.zshrc && \
 echo "alias e='g srcs/test*.cpp > /dev/pts/1; c srcs/test*.cpp > /dev/pts/2'" >> ~/.zshrc

ENV ASAN_SYMBOLIZER_PATH=/usr/lib/llvm-6.0/bin/llvm-symbolizer
