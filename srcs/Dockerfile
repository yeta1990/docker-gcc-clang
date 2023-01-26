#https://baykara.medium.com/installing-clang-10-in-a-docker-container-4c24a4538af2

FROM ubuntu:18.04

#FROM debian:buster

RUN apt-get update 
RUN apt-get install -y \
 xz-utils \
 curl \
 build-essential \
 zsh \
 fontconfig \
 zip \
 git \
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

COPY powerlevel10k.zsh-theme ~/powerlevel10k/powerlevel10k.zsh-theme
COPY .p10k.zsh ~
RUN echo "export PATH=/clang_15/bin:$PATH" >> ~/.zshrc && \
 echo "export LD_LIBRARY_PATH=/clang_15/lib:$LD_LIBRARY_PATH" >> ~/.zshrc

#CMD [ "/bin/zsh" ]
