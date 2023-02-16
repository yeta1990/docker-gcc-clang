all:
	@cd srcs/ && docker-compose build && docker-compose up -d

build:
	@cd srcs/ && docker-compose build --no-cache

up:
	@cd srcs/ && docker rmi -f $(shell docker images -f "dangling=true" -q) && docker-compose up -d

down:
	@cd srcs/ && docker-compose down

logs:
	@cd srcs/ && docker-compose logs -f

clean: down
	@docker system prune -af

fclean:	clean
	@docker volume rm srcs_repo
	@docker volume rm srcs_clang

space:
	@docker system df

re: fclean build

.PHONY:		all build up down logs clean fclean re space mariadb wordpress nginx
