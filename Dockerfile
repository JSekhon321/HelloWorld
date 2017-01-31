FROM ubuntu:16.04
Maintainer mahzad.davani@corusent.com
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 \
    mysql-server \
    php \
    libapache2-mod-php php \
    php-mysql \
    vim \
    curl
Volume /var/www/html
run set -x \
    && chown -R www-data:www-data /var/www/html
WORKDIR /var/www/html
COPY ./index.html /var/www/html
Expose 80
