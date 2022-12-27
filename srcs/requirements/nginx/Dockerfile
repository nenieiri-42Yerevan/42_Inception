# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vismaily <nenie_iri@mail.ru>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/22 16:46:05 by vismaily          #+#    #+#              #
#    Updated: 2022/12/27 12:17:46 by vismaily         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt update && \
			apt install nginx -y && \
			apt install openssl -y && \
			rm -rf /var/lib/apt/lists/*

WORKDIR		/etc/nginx

RUN			mkdir ./ssl && \
			openssl req \
			-new -newkey rsa:4096 -nodes \
			-keyout ./ssl/selfsigned.key \
			-x509 -days 365 \
			-out ./ssl/selfsigned.crt \
			-subj "/C=AM/ST=Yerevan/L=Yerevan/O=42Yerevan/OU=IT/CN=localhost"

COPY		./conf/nginx.conf ./sites-available/nginx.conf
COPY		./tools/script.sh ./

RUN			ln -s /etc/nginx/sites-available/nginx.conf ./sites-enabled/ && \
			rm -f ./sites-enabled/default && \
			chmod 766 ./script.sh

ENTRYPOINT	["/etc/nginx/script.sh"]

CMD			["nginx", "-g", "daemon off;"]
