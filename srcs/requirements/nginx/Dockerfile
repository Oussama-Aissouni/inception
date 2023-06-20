FROM debian:buster

RUN apt-get update && \
    apt-get install nginx -y

COPY ./conf/default /etc/nginx/sites-enabled/
COPY ./tools/oaissoun.42.fr.pem /etc/nginx/ssl/
COPY ./tools/oaissoun.42.fr-key.pem /etc/nginx/ssl/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]