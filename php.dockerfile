FROM php:7.4-fpm-alpine

# Instale as extensões necessárias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Aumente o tamanho máximo do arquivo de upload
RUN echo "upload_max_filesize = 2G" >> /usr/local/etc/php/php.ini
RUN echo "post_max_size = 2G" >> /usr/local/etc/php/php.ini

CMD ["php-fpm"]