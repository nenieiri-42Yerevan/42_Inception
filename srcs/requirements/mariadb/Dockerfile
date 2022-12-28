# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vismaily <nenie_iri@mail.ru>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/26 15:24:41 by vismaily          #+#    #+#              #
#    Updated: 2022/12/27 18:27:59 by vismaily         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt update && \
			apt install -y mariadb-server && \
			rm -rf /var/lib/apt/lists/*

COPY		./tools/entrypoint-script.sh ./tmp/

ENTRYPOINT	["/tmp/entrypoint-script.sh"]

#CMD			["mysqld"]
CMD			["bash"]
