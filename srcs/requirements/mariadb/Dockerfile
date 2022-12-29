# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vismaily <nenie_iri@mail.ru>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/26 15:24:41 by vismaily          #+#    #+#              #
#    Updated: 2022/12/29 18:01:00 by vismaily         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster

RUN			apt update && \
			apt install -y vim && \
			apt install -y mariadb-server && \
			rm -rf /var/lib/apt/lists/*;

COPY		./tools/entrypoint-script.sh /tmp/
RUN			chmod 766 /tmp/entrypoint-script.sh

ENTRYPOINT	["/tmp/entrypoint-script.sh"]

#CMD			["mysqld"]
CMD			["bash"]
