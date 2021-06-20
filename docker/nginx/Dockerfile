FROM nginx:latest

LABEL maintainer="Mudassar Ali <mudassar.ali@gmail.com>"

ARG PHP_UPSTREAM_CONTAINER=app
ARG PHP_UPSTREAM_PORT=9000

ENV PHP_UPSTREAM_PORT=${PHP_UPSTREAM_PORT}
ENV PHP_UPSTREAM_CONTAINER=${PHP_UPSTREAM_CONTAINER}

# Set upstream conf and remove the default conf
RUN echo "upstream php-upstream { server ${PHP_UPSTREAM_CONTAINER}:${PHP_UPSTREAM_PORT}; }" > /etc/nginx/conf.d/upstream.conf \
    && rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/
COPY sites/default.conf /etc/nginx/sites-available/

EXPOSE 80
