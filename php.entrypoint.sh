#!/bin/bash
/etc/init.d/php8.4-fpm start
tail -f /var/log/php8.4-fpm.log
