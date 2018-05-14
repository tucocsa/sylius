FROM richarvey/nginx-php-fpm:latest

RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories
RUN apk add --no-cache yarn

RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories
RUN apk --no-cache add shadow

# Add user
RUN usermod -u 1000 nginx

#USER root
COPY ./scripts/start.sh /
RUN chmod 777 /start.sh

ENTRYPOINT ["/start.sh"]