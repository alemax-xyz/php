#!/bin/sh

(
	if [ -n "${PHP_FPM_PDO_SNOWFLAKE_CACERT+1}" ]; then
		echo "pdo_snowflake.cacert=${PHP_FPM_PDO_SNOWFLAKE_CACERT}"
	elif [ -n "${PHP_PDO_SNOWFLAKE_CACERT+1}" ]; then
		echo "pdo_snowflake.cacert=${PHP_PDO_SNOWFLAKE_CACERT}"
	fi
	if [ -n "${PHP_FPM_PDO_SNOWFLAKE_DEBUG+1}" ]; then
		echo "pdo_snowflake.debug=${PHP_FPM_PDO_SNOWFLAKE_DEBUG}"
	elif [ -n "${PHP_PDO_SNOWFLAKE_DEBUG+1}" ]; then
		echo "pdo_snowflake.debug=${PHP_PDO_SNOWFLAKE_DEBUG}"
	fi
	if [ -n "${PHP_FPM_PDO_SNOWFLAKE_LOGDIR+1}" ]; then
		echo "pdo_snowflake.logdir=${PHP_FPM_PDO_SNOWFLAKE_LOGDIR}"
	elif [ -n "${PHP_PDO_SNOWFLAKE_LOGDIR+1}" ]; then
		echo "pdo_snowflake.logdir=${PHP_PDO_SNOWFLAKE_LOGDIR}"
	fi
	if [ -n "${PHP_FPM_PDO_SNOWFLAKE_LOGLEVEL+1}" ]; then
		echo "pdo_snowflake.loglevel=${PHP_FPM_PDO_SNOWFLAKE_LOGLEVEL}"
	elif [ -n "${PHP_PDO_SNOWFLAKE_LOGLEVEL+1}" ]; then
		echo "pdo_snowflake.loglevel=${PHP_PDO_SNOWFLAKE_LOGLEVEL}"
	fi
) > /etc/php/7.2/fpm/conf.d/99-contrib.ini
