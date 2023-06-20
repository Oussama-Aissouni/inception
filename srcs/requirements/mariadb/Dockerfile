FROM debian:buster

RUN apt-get update && \
    apt-get install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/script.sql /

RUN service mysql start && mysql < /script.sql && rm -f /script.sql;

CMD ["mysqld"]