all: clean build
	@cd srcs/ && docker-compose up -d

build:
	@cd srcs/ && docker-compose build

fbuild:
	@cd srcs/ && docker-compose build --no-cache

up:
	@cd srcs/ && docker rmi $(shell docker images -f "dangling=true" -qa) && docker-compose up -d

down:
	@cd srcs/ && docker-compose down

logs:
	@cd srcs/ && docker-compose logs -f

clean: down
	@docker volume prune -f

fclean:	clean
	@docker image rm ubuntu_gcc_clang

prune:
	@docker system prune -af

space:
	@docker system df

re: fclean build

.PHONY:		all build up down logs clean fclean re space mariadb wordpress nginx
