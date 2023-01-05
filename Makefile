# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vismaily <nenie_iri@mail.ru>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/05 15:05:23 by vismaily          #+#    #+#              #
#    Updated: 2023/01/05 17:49:55 by vismaily         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILE		= -f ./srcs/docker-compose.yml
MOUNT_DIR	= $(HOME)/data

all:		build up

build:
			sudo docker-compose $(FILE) build

up:
			sudo mkdir -p $(MOUNT_DIR)/mariadb
			sudo mkdir -p $(MOUNT_DIR)/wordpress
			sudo docker-compose $(FILE) up -d

down:
			sudo docker-compose $(FILE) down

start:
			sudo docker-compose $(FILE) start

stop:
			sudo docker-compose $(FILE) stop

clean:		down
			sudo docker image prune
			sudo docker rmi mariadb wordpress nginx

fclean:
			sudo docker volume rm srcs_db_data srcs_wordpress_data
			sudo rm -rf $(MOUNT_DIR)/mariadb
			sudo rm -rf $(MOUNT_DIR)/wordpress

re:			fclean all

.PHONY:		all clean fclean re build up down start stop
