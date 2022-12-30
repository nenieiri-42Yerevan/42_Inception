# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vismaily <nenie_iri@mail.ru>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/22 16:46:05 by vismaily          #+#    #+#              #
#    Updated: 2022/12/30 19:00:40 by vismaily         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt update; \
			apt install -y wget; \
			apt install -y php php-fpm php-mysqli; \
			rm -rf /var/lib/apt/lists/*;

WORKDIR		/var/www/

RUN			wget https://wordpress.org/latest.tar.gz; \
			tar -xzvf latest.tar.gz; \
			rm -rf latest.tar.gz;

WORKDIR		/var/www/wordpress

COPY		./tools/entrypoint-script.sh ./
COPY		./conf/wp-config.php ./

RUN			chmod 766 ./entrypoint-script.sh;

ARG			MYSQL_HOST=mariadb
ENV			MYSQL_HOSTNAME=$MYSQL_HOST

ENTRYPOINT	["/var/www/wordpress/entrypoint-script.sh"]

CMD			["php-fpm7.3", "-F"]
