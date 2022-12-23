# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vismaily <nenie_iri@mail.ru>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/22 16:46:05 by vismaily          #+#    #+#              #
#    Updated: 2022/12/23 18:29:09 by vismaily         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN		apt update && \
		apt install nginx -y && \
		apt install openssl -y && \
		rm -rf /var/lib/apt/lists/*

RUN		openssl req \
		-new -newkey rsa:4096 -nodes \
		-keyout /etc/ssl/private/nginx-selfsigned.key \
		-x509 -days 365 \
		-out /etc/ssl/private/nginx-selfsigned.crt \
		-subj "/C=AM/ST=Yerevan/L=Yerevan/O=42Yerevan/OU=IT/CN=localhost"

CMD		["/usr/sbin/nginx", "-g", "daemon off;"]
