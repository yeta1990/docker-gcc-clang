
![demo](https://user-images.githubusercontent.com/65416560/224544022-22172a6c-17a3-4404-8734-929e88339e4b.gif)

# 🐳 Ubuntu for 42 computers in a single command
Docker container based in ubuntu18 to compile your 42 C and C++ projects with gcc7 and clang15.

## 🤔 Is this tool useful for me?
**TL:DR; 
The original purpose of this project is to find leaks and segfaults in seconds compiling your C and C++ programs with `-g3 -fsanitize=address`, without the limitations of the 42 iMacs**

If you are in any of these situations, this tool is definitely useful for you:
- You are working in a 42 iMac.
- You don't really know if your program leaks memory.
- You don't know what is generating a segfault in your program.
- You want to use valgrind or gdb.
- You usually debug with printf.
- You are trying to find leaks with the system leaks call, i.e.: `system("leaks a.out");`.

## 📘 Features
- It includes **gcc, clang, valgrind** and **ohmyzsh**
- Real-time synchronization with your **vim** or **VStudio**: mounts a volume in your working directory so you can edit as you normally do it and then compile and execute in the ubuntu container.
- Includes **readline** library, needed to compile Minishell project just adding flag -lreadline.

## ⚙️ Requirements

 1. Docker installed and running. (In iMac you'll find it in the MSC).
 2. Change the cache directory of docker to goinfre: `Docker desktop, Preferences->Resources: Advanced->Disk image location: /goinfre/your_42_user`

## 🖥 Usage
### Option 1: the easiest way (1 command, without cloning the repo)
In your terminal, go to the folder you want to work with and type:
```zsh
docker run -it --rm -v $(PWD):/home/marvin/docker yeta1990/gcc-clang-42
```
<!-- TODO figure out the new name logic -->
The container stops and is removed once you leave the terminal session.
 
### Option 2: option 1 but more comfortable (1 alias, without cloning the repo)
Feel like a pro adding this alias in your `~/.zshrc`
```zsh
alias ubuntu='docker run -it --rm -v $(PWD):/home/marvin/docker yeta1990/gcc-clang-42'
```
 
Then, you'll only need to type `ubuntu` whenever you want to open a terminal of your ubuntu container.
The container stops and is removed once you leave the terminal session.

### Option 3: building the image
The mounted volume will be your whole $HOME directory. Type:
 
```zsh
git clone https://github.com/yeta1990/docker-gcc-clang /sgoinfre/students/$USER/docker-gcc-clang && cd /sgoinfre/students/$USER/docker-gcc-clang && make
```

Other actions:
- Open more ubuntu terminals by:
`docker exec -it ubuntu /bin/zsh`
- Stop the container: `make down`
- Clean everything: `make fclean`

### Option 4: build the image and set the working directory
Run `./custom.sh` and specify the directory you want to mount into the container.
Once you run this script, it's no necessary to execute it again, just type `make`, the working directory is stored in srcs/.env.
Other actions: 
- Open more ubuntu terminals by:
`docker exec -it ubuntu /bin/zsh`
- Stop the container: `make down`
- Clean everything: `make fclean`

## 👷 Contributors

[Jkutkut](https://github.com/Jkutkut) has improved the Dockerfile and has uploaded the image to dockerhub.

[Josgarci](https://github.com/PepeGF) has improved the Dockerfile by adding features such as the readline library.

