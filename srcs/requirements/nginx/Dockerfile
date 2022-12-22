# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vismaily <nenie_iri@mail.ru>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/22 16:46:05 by vismaily          #+#    #+#              #
#    Updated: 2022/12/22 19:05:45 by vismaily         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster

RUN		apt update && apt install nginx -y && rm -rf /var/lib/apt/lists/*

CMD		["/usr/sbin/nginx", "-g", "daemon off;"]
