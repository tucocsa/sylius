FROM richarvey/nginx-php-fpm:latest

#RUN apt-get update && apt-get -y upgrade
#RUN apt-get install php7.1-common
#
#RUN apt-get remove --purge -y software-properties-common \
#	python-software-properties && \
#	apt-get autoremove -y && \
#	apt-get clean && \
#	apt-get autoclean

RUN adduser -SHs --disabled-login sylius \
    && adduser sylius www-data

#RUN mkdir /var/www/sylius \
#    && chown -R sylius:www-data /var/www/sylius

#USER root
COPY ./scripts/start.sh /
RUN chmod 777 /start.sh

ENTRYPOINT ["/start.sh"]