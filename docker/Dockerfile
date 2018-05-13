FROM richarvey/nginx-php-fpm:latest

RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories
RUN apk add --no-cache yarn

# Add user
RUN adduser -D -u 1000 sylius

#USER root
COPY ./scripts/start.sh /
RUN chmod 777 /start.sh

ENTRYPOINT ["/start.sh"]