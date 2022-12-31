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
			rm -rf latest.tar.gz; \
			mkdir -p /run/php;

COPY		./tools/entrypoint-script.sh ./
COPY		./conf/wp-config.php ./wordpress/
COPY		./conf/www.conf /etc/php/7.3/fpm/pool.d/

ARG			MYSQL_HOST=mariadb
ENV			MYSQL_HOSTNAME=$MYSQL_HOST

RUN			chmod 766 ./entrypoint-script.sh;

ENTRYPOINT	["/var/www/entrypoint-script.sh"]

CMD			["/usr/sbin/php-fpm7.3", "-F"]
