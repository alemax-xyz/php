#!/bin/sh

BASE=/etc/php/8.0
MODS=$BASE/mods-available
CONF=$BASE/fpm/conf.d

if [ \( "${PHP_MODULES_ALL:-1}" != 0 -a -z "${PHP_FPM_MODULES_ALL}" \) -o \( "${PHP_FPM_MODULES_ALL}" != 0 -a -n "${PHP_FPM_MODULES_ALL}" \) ]; then
	[ \( "${PHP_MODULE_PDO_SNOWFLAKE:-1}" = 0 -a -z "${PHP_FPM_MODULE_PDO_SNOWFLAKE}" \) -o "${PHP_FPM_MODULE_PDO_SNOWFLAKE:-1}" = 0 ] && rm -f $CONF/20-pdo_snowflake.ini || ln -sf $MODS/pdo_snowflake.ini $CONF/20-pdo_snowflake.ini
else
	[ \( "${PHP_MODULE_PDO_SNOWFLAKE:-0}" != 0 -a -z "${PHP_FPM_MODULE_PDO_SNOWFLAKE}" \) -o "${PHP_FPM_MODULE_PDO_SNOWFLAKE:-0}" != 0 ] && ln -sf $MODS/pdo_snowflake.ini $CONF/20-pdo_snowflake.ini || rm -f $CONF/20-pdo_snowflake.ini
fi
