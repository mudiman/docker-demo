FROM mudiman/docker-demo-app-base:latest

COPY ../src/ /var/www/

EXPOSE 9000
