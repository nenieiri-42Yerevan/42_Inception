# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vismaily <nenie_iri@mail.ru>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/22 16:46:05 by vismaily          #+#    #+#              #
#    Updated: 2022/12/27 17:02:09 by vismaily         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt update && \
			apt install -y wget && \
			apt install -y php php-fpm php-mysqli && \
			rm -rf /var/lib/apt/lists/*

WORKDIR		/var/www/

RUN			wget https://wordpress.org/latest.tar.gz && \
			tar -xzvf latest.tar.gz && \
			rm -rf latest.tar.gz && \
			mv ./wordpress ./mysite

WORKDIR		/var/www/mysite

COPY		./tools/entrypoint-script.sh ./
COPY		./conf/wp-config.php ./

RUN			chmod 766 ./entrypoint-script.sh

#ENTRYPOINT	["/var/www/mysite/entrypoint-srcipt.sh"]

#CMD			[]
