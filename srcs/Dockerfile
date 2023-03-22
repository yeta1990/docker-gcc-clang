#https://baykara.medium.com/installing-clang-10-in-a-docker-container-4c24a4538af2

#FROM ubuntu:latest
FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
 sudo \
 curl \
 zsh \
 zip \
 git \
 vim \
 build-essential \
 valgrind \
 readline-common \
 libreadline-dev \
 clang \
 && rm -rf /var/lib/apt/lists/* && \
 useradd -m marvin && \
 echo "marvin ALL=(ALL) ALL" > /etc/sudoers.d/marvin && \
 chmod 0440 /etc/sudoers.d/marvin && \
 passwd -d marvin && \
 chsh -s zsh marvin

USER marvin

COPY --chown=marvin:marvin config/.vimrc config/.zshrc /home/marvin/

RUN curl -s https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh --output /home/marvin/install.sh && \
 /bin/sh /home/marvin/install.sh --unattended --skip-chsh --keep-zshrc && \
 rm /home/marvin/install.sh

WORKDIR /home/marvin/docker

ENTRYPOINT ["/bin/zsh"]