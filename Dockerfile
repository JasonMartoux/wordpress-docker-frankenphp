FROM stephenmiracle/frankenwp:beta-1.0.0


# Access the phpinfo to show xdebug is installed.
COPY ./phpinfo.php /var/www/html/phpinfo.php
COPY ./test.php /var/www/html/test.php
COPY ./upload.ini $PHP_INI_DIR/conf.d/upload.ini
COPY ./xdebug.ini $PHP_INI_DIR/conf.d/xdebug.ini

# install xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug
