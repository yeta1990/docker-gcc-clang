Docker container based in ubuntu18 to compile with gcc7 and clang15 on a 42 Madrid Mac.
- zsh + p10k pre-configured
- mounts a volume in your preferred working directory so you can edit outside the container and compile and execute in it. 

## Requirements
- Docker installed and running
- This repository must be in /goinfre/your_user/: `git clone https://github.com/yeta1990/docker-gcc-clang /goinfre/$USER/docker-gcc-clang`

## Config
### Docker desktop, Preferences->Resources:
- Advanced->Disk image location: /goinfre/your_user
- File sharing: /goinfre/your_user

### Replace environment variables in file `config`: 
- DLC_WORK_VOLUME_ORIGIN: path of the folder where your code is in your host. i.e.: $HOME/Documents/libft
- DLC_WORK_VOLUME_DESTINATION: path of the folder where you will found your code in your container. i.e: /home/libft
- DLC_WORKING_DIR: path of the folder where you will enter when you open a new terminal of the container. i.e.: /home/libft

### How to
- build and run the container: go to the main folder of this repository and type `make`. Make sure you have already edited the `config` file with your paths before you start building the container.
- open a terminal with the running container: type `docker exec -it ubuntu /bin/zsh`
- stop the container: `make stop`
- clean everything: `make fclean`
