FROM debian
WORKDIR /app
RUN apt-get update && apt-get install -y php-fpm
COPY php.www.conf /etc/php/8.4/fpm/pool.d/www.conf
#COPY index.php /app/
COPY php.entrypoint.sh /root/
CMD ["/root/php.entrypoint.sh"]
