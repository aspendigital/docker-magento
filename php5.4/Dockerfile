FROM php:5.4-apache
MAINTAINER Aspen Digital <info@aspendigital.com>

RUN apt-get update && apt-get install -y git-core \
  libpng12-dev libmcrypt-dev libmcrypt4 libcurl3-dev libfreetype6 \
  libjpeg62-turbo libpng12-dev libfreetype6-dev libjpeg62-turbo-dev libxml2-dev \
  && rm -rf /var/lib/apt/lists/* \
  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
  && docker-php-ext-install gd mysqli mcrypt soap pdo pdo_mysql

RUN pecl install apcu-4.0.11 \
  && echo extension=apcu.so > /usr/local/etc/php/conf.d/apcu.ini

RUN a2enmod rewrite

RUN curl -fSL -o /usr/local/bin/n98-magerun \
    --url https://files.magerun.net/n98-magerun.phar \
    && chmod +x /usr/local/bin/n98-magerun

RUN curl -fSL -o /usr/local/bin/modman \
    --url https://raw.githubusercontent.com/colinmollenhour/modman/master/modman \
    && chmod +x /usr/local/bin/modman

ENV MAGENTO_VERSION 1.7.0.2
ENV MAGENTO_CHECKSUM c10a3e15f9311c2b079bb2e71bacb32cb3192402

RUN curl -fSL -o magento-$MAGENTO_VERSION.tar.gz \
    --url https://codeload.github.com/OpenMage/magento-mirror/tar.gz/$MAGENTO_VERSION \
    && echo "$MAGENTO_CHECKSUM *magento-$MAGENTO_VERSION.tar.gz" | sha1sum -c - \
    && tar -xzf magento-$MAGENTO_VERSION.tar.gz \
    && find magento-mirror-$MAGENTO_VERSION -mindepth 1 -maxdepth 1 -exec mv -t . {} \; \
    && rmdir magento-mirror-$MAGENTO_VERSION \
    && rm magento-$MAGENTO_VERSION.tar.gz

RUN chown -R www-data:www-data /var/www/html \
    && find /var/www/html/. -type f -exec chmod 644 {} \; \
    && find /var/www/html/. -type d -exec chmod 755 {} \; \
    && chmod o+w /var/www/html/var /var/www/html/var/package /var/www/html/var/.htaccess /var/www/html/app/etc \
    && chmod -R o+w /var/www/html/media

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]
