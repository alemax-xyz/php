#!/bin/sh

(
	echo "[www]"
	[ -n "${PHP_FPM_POOL_PREFIX+1}" ] && echo "prefix=\"${PHP_FPM_POOL_PREFIX}\""
	if [ -n "${PHP_FPM_POOL_USER+1}" ]; then
		echo "user=\"${PHP_FPM_POOL_USER}\""
	else
		echo "user=\"${PUSER:-www}\""
	fi
	if [ -n "${PHP_FPM_POOL_GROUP+1}" ]; then
		echo "group=\"${PHP_FPM_POOL_GROUP}\""
	else
		echo "group=\"${PGROUP:-www}\""
	fi
	echo "listen=\"${PHP_FPM_POOL_LISTEN:-9000}\""
	[ -n "${PHP_FPM_POOL_LISTEN_BACKLOG+1}" ] && echo "listen.backlog=\"${PHP_FPM_POOL_LISTEN_BACKLOG}\""
	[ -n "${PHP_FPM_POOL_LISTEN_ALLOWED_CLIENTS+1}" ] && echo "listen.allowed_clients=\"${PHP_FPM_POOL_LISTEN_ALLOWED_CLIENTS}\""
	echo "pm=\"${PHP_FPM_POOL_PM:-dynamic}\""
	echo "pm.max_children=\"${PHP_FPM_POOL_PM_MAX_CHILDREN:-5}\""
	echo "pm.start_servers=\"${PHP_FPM_POOL_PM_START_SERVERS:-2}\""
	echo "pm.min_spare_servers=\"${PHP_FPM_POOL_PM_MIN_SPARE_SERVERS:-1}\""
	echo "pm.max_spare_servers=\"${PHP_FPM_POOL_PM_MAX_SPARE_SERVERS:-3}\""
	[ -n "${PHP_FPM_POOL_PM_PROCESS_IDLE_TIMEOUT+1}" ] && echo "pm.process_idle_timeout=\"${PHP_FPM_POOL_PM_PROCESS_IDLE_TIMEOUT}\""
	[ -n "${PHP_FPM_POOL_PM_MAX_REQUESTS+1}" ] && echo "pm.max_requests=\"${PHP_FPM_POOL_PM_MAX_REQUESTS}\""
	[ -n "${PHP_FPM_POOL_PM_STATUS_PATH+1}" ] && echo "pm.status_path=\"${PHP_FPM_POOL_PM_STATUS_PATH}\""
	[ -n "${PHP_FPM_POOL_PING_PATH+1}" ] && echo "ping.path=\"${PHP_FPM_POOL_PING_PATH}\""
	[ -n "${PHP_FPM_POOL_PING_RESPONSE+1}" ] && echo "ping.response=\"${PHP_FPM_POOL_PING_RESPONSE}\""
	[ -n "${PHP_FPM_POOL_ACCESS_LOG+1}" ] && echo "access.log=\"${PHP_FPM_POOL_ACCESS_LOG}\""
	[ -n "${PHP_FPM_POOL_ACCESS_FORMAT+1}" ] && echo "access.format=\"${PHP_FPM_POOL_ACCESS_FORMAT}\""
	[ -n "${PHP_FPM_POOL_SLOWLOG+1}" ] && echo "slowlog=\"${PHP_FPM_POOL_SLOWLOG}\""
	[ -n "${PHP_FPM_POOL_REQUEST_SLOWLOG_TIMEOUT+1}" ] && echo "request_slowlog_timeout=\"${PHP_FPM_POOL_REQUEST_SLOWLOG_TIMEOUT}\""
	[ -n "${PHP_FPM_POOL_REQUEST_TERMINATE_TIMEOUT+1}" ] && echo "request_terminate_timeout=\"${PHP_FPM_POOL_REQUEST_TERMINATE_TIMEOUT}\""
	if [ -n "${PHP_FPM_POOL_RLIMIT_FILES+1}" ]; then 
		echo "rlimit_files=\"${PHP_FPM_POOL_RLIMIT_FILES}\""
	elif [ -n "${PHP_FPM_RLIMIT_FILES+1}" ]; then
		echo "rlimit_files=\"${PHP_FPM_RLIMIT_FILES}\""
	fi
	if [ -n "${PHP_FPM_POOL_RLIMIT_CORE+1}" ]; then 
		echo "rlimit_core=\"${PHP_FPM_POOL_RLIMIT_CORE}\""
	elif [ -n "${PHP_FPM_RLIMIT_FILES+1}" ]; then
		echo "rlimit_core=\"${PHP_FPM_RLIMIT_CORE}\""
	fi
	[ -n "${PHP_FPM_POOL_CHROOT+1}" ] && echo "chroot=\"${PHP_FPM_POOL_CHROOT}\""
	[ -n "${PHP_FPM_POOL_CHDIR+1}" ] && echo "chdir=\"${PHP_FPM_POOL_CHDIR}\""
	[ -n "${PHP_FPM_POOL_CATCH_WORKERS_OUTPUT+1}" ] && echo "catch_workers_output=${PHP_FPM_POOL_CATCH_WORKERS_OUTPUT}"
	[ -n "${PHP_FPM_POOL_CLEAR_ENV+1}" ] && echo "clear_env=${PHP_FPM_POOL_CLEAR_ENV}"
	[ -n "${PHP_FPM_POOL_SECURITY_LIMIT_EXTENSIONS+1}" ] && echo "security.limit_extensions=\"${PHP_FPM_POOL_SECURITY_LIMIT_EXTENSIONS}\""
) > /etc/php/7.0/fpm/pool.d/www.conf
