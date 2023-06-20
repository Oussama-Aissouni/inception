build :
	docker-compose -f ./srcs/docker-compose.yml build

up :
	docker-compose -f ./srcs/docker-compose.yml up -d

buildup :
	docker-compose -f ./srcs/docker-compose.yml up --build

down :
	docker-compose -f ./srcs/docker-compose.yml down -v

ps :
	docker ps

clean :
	docker rmi -f $m

list :
	docker images

exec :
	docker exec -ti $c bash

cache :
	docker system prune -a