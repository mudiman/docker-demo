FROM mudiman/docker-demo-nginx-base:latest

COPY ../src/ /var/www/

EXPOSE 80
