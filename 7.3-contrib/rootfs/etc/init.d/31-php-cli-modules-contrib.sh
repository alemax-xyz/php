BASE=/etc/php/7.3
MODS=$BASE/mods-available
CONF=$BASE/cli/conf.d

if [ \( "${PHP_MODULES_ALL:-1}" != 0 -a -z "${PHP_CLI_MODULES_ALL}" \) -o \( "${PHP_CLI_MODULES_ALL}" != 0 -a -n "${PHP_CLI_MODULES_ALL}" \) ]; then
	[ \( "${PHP_MODULE_PDO_SNOWFLAKE:-1}" = 0 -a -z "${PHP_CLI_MODULE_PDO_SNOWFLAKE}" \) -o "${PHP_CLI_MODULE_PDO_SNOWFLAKE:-1}" = 0 ] && suexec rm -f $CONF/20-pdo-snowflake.ini || suexec ln -sf $MODS/pdo-snowflake.ini $CONF/20-pdo-snowflake.ini
else
	[ \( "${PHP_MODULE_PDO_SNOWFLAKE:-0}" != 0 -a -z "${PHP_CLI_MODULE_PDO_SNOWFLAKE}" \) -o "${PHP_CLI_MODULE_PDO_SNOWFLAKE:-0}" != 0 ] && suexec ln -sf $MODS/pdo-snowflake.ini $CONF/20-pdo-snowflake.ini || suexec rm -f $CONF/20-pdo-snowflake.ini
fi
