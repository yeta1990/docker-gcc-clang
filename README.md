![demo](https://user-images.githubusercontent.com/65416560/224544022-22172a6c-17a3-4404-8734-929e88339e4b.gif)

# Docker container with gcc and clang
Docker container based in ubuntu18 to compile your 42 C and C++ projects with gcc7 and clang15
- it includes compilers, valgrind and zsh + p10k pre-configured
- mounts a volume in your working directory so you can edit outside the container with vim or VStudio and compile and execute into the ubuntu container.
- by default, the mounted volume is your whole $HOME directory (although you can change it, see "custom working directory").
- specially developed for using it in the 42 Madrid iMacs with Catalina.

## Requirements
- Docker installed (by the MSC) and running
- `git clone https://github.com/yeta1990/docker-gcc-clang /sgoinfre/students/$USER/docker-gcc-clang`
- (recommended!!) Change the cache directory of docker to goinfre: Docker desktop, Preferences->Resources: Advanced->Disk image location: /goinfre/your_user
- (optional) To see the icons in zsh+p10k: [MesloLGS font](https://github.com/romkatv/powerlevel10k#fonts)/[Nerd fonts](https://github.com/ryanoasis/nerd-fonts#macos-os-x)installed

## Usage
- once you have docker installed and running, build and run the container: go to the main folder of this repository and type `make`.
- open a terminal with the running container: type `docker exec -it ubuntu /bin/zsh` (I recommend to create a bash alias...)
- stop the container: `make stop`
- clean everything: `make fclean`

## (optional) Custom working directory
Run `./custom.sh` and specify the directory you want to mount into the container.
Once you run this script, it's no necessary to execute it again, just type `make`, the working directory is stored in srcs/.env.
