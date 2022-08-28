FROM httpd:latest

RUN apt-get update

COPY index.html /usr/local/apache2/htdocs/index.html

CMD httpd -D FOREGROUND
