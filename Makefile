all:
	@cd srcs && ./download-clang.sh
	@cd srcs/ && docker-compose build && docker-compose up -d #&& docker run -it --rm -v /home/albgarci/Documents/ft_containers/:/home/cont ubuntu

build:
	@cd srcs/ && docker-compose build --no-cache

up:
	@cd srcs/ && docker-compose up -d

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
