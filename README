Docker container based in ubuntu18 to compile with gcc7 and clang15 on a 42 Madrid Mac.
- zsh + p10k pre-configured
- mounts a volume in your preferred working directory so you can edit outside the container and compile and execute in it. 

[requirements]
- Docker installed and running
- This repository copied in /goinfre/your_user

[config]
Docker desktop, Preferences->Resources:
- Advanced->Disk image location: /goinfre/your_user
- File sharing: /goinfre/your_user

In srcs/setup.sh:
- Replace DLC_WORK_DIR variable with the path you want to work with in your container. (Only valid during the first build - read `how to` section).

[how to]
change the mounted volume: edit docker-compose.yml, change volume->repo property and 'device' value of 'repo' volume 
build and run the container: go to the main folder of this repository and type `make`
open a terminal with the running container: type `docker exec -it ubuntu /bin/zsh`
change the default folder where you enter when you open a new terminal: edit docker-compose.yml, 'working_dir'
stop the container: `make stop`
clean everything: `make fclean`

