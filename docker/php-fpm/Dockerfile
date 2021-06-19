ARG PHP_VERSION=7.4
FROM php:${PHP_VERSION}-fpm

LABEL maintainer="Mudassar Ali <mudassar.ali@gmail.com>"

ARG INSTALL_XDEBUG=false
ARG XDEBUG_VERSION=2.5.5

RUN if [ ${INSTALL_XDEBUG} = true ]; then pecl channel-update pecl.php.net && pecl install xdebug-${XDEBUG_VERSION} && docker-php-ext-enable xdebug ;fi

RUN set -eux; \
    docker-php-ext-install pdo_mysql mysqli;


COPY ./app.ini  /usr/local/etc/php/conf.d/
COPY ./app.pool.conf /usr/local/etc/php-fpm.d/

USER root

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm /var/log/lastlog /var/log/faillog


CMD ["php-fpm"]

EXPOSE 9000
