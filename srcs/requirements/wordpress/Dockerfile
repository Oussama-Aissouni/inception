FROM debian:buster

RUN apt-get update && \
    apt update && apt upgrade && \
    apt-get install curl -y && \
    apt-get install vim -y && \
    apt-get install -y php php7.3-fpm php7.3-mysql mariadb-client

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./tools/script.sh /script.sh

EXPOSE 9000

CMD ["sh", "/script.sh"]