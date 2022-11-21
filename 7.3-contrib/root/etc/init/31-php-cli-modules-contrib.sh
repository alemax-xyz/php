#!/bin/sh

BASE=/etc/php/7.3
MODS=$BASE/mods-available
CONF=$BASE/cli/conf.d

if [ \( "${PHP_MODULES_ALL:-1}" != 0 -a -z "${PHP_CLI_MODULES_ALL}" \) -o \( "${PHP_CLI_MODULES_ALL}" != 0 -a -n "${PHP_CLI_MODULES_ALL}" \) ]; then
	[ \( "${PHP_MODULE_PDO_SNOWFLAKE:-1}" = 0 -a -z "${PHP_CLI_MODULE_PDO_SNOWFLAKE}" \) -o "${PHP_CLI_MODULE_PDO_SNOWFLAKE:-1}" = 0 ] && rm -f $CONF/20-pdo-snowflake.ini || ln -sf $MODS/pdo-snowflake.ini $CONF/20-pdo-snowflake.ini
else
	[ \( "${PHP_MODULE_PDO_SNOWFLAKE:-0}" != 0 -a -z "${PHP_CLI_MODULE_PDO_SNOWFLAKE}" \) -o "${PHP_CLI_MODULE_PDO_SNOWFLAKE:-0}" != 0 ] && ln -sf $MODS/pdo-snowflake.ini $CONF/20-pdo-snowflake.ini || rm -f $CONF/20-pdo-snowflake.ini
fi
