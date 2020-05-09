#!/bin/sh

(
	echo "[global]"
	echo "pid=\"${PHP_FPM_PID:-/run/php/php7.4-fpm.pid}\""
	if [ -n "${PHP_FPM_ERROR_LOG+1}" ]; then 
		echo "error_log=\"${PHP_FPM_ERROR_LOG}\""
	elif [ -n "${PHP_ERROR_LOG+1}" ]; then
		echo "error_log=\"${PHP_ERROR_LOG}\""
	fi
	[ -n "${PHP_FPM_LOG_LEVEL+1}" ] && echo "log_level=\"${PHP_FPM_LOG_LEVEL}\""
	[ -n "${PHP_FPM_LOG_LIMIT+1}" ] && echo "log_limit=\"${PHP_FPM_LOG_LIMIT}\""
	[ -n "${PHP_FPM_EMERGENCY_RESTART_THRESHOLD+1}" ] && echo "emergency_restart_threshold=\"${PHP_FPM_EMERGENCY_RESTART_THRESHOLD}\""
	[ -n "${PHP_FPM_EMERGENCY_RESTART_INTERVAL+1}" ] && echo "emergency_restart_interval=\"${PHP_FPM_EMERGENCY_RESTART_INTERVAL}\""
	[ -n "${PHP_FPM_PROCESS_CONTROL_TIMEOUT+1}" ] && echo "process_control_timeout=\"${PHP_FPM_PROCESS_CONTROL_TIMEOUT}\""
	[ -n "${PHP_FPM_PROCESS_MAX+1}" ] && echo "process.max=\"${PHP_FPM_PROCESS_MAX}\""
	[ -n "${PHP_FPM_PROCESS_PRIORITY+1}" ] && echo "process.priority=\"${PHP_FPM_PROCESS_PRIORITY}\""
	[ -n "${PHP_FPM_RLIMIT_FILES+1}" ] && echo "rlimit_files=\"${PHP_FPM_RLIMIT_FILES}\""
	[ -n "${PHP_FPM_RLIMIT_CORE+1}" ] && echo "rlimit_core=\"${PHP_FPM_RLIMIT_CORE}\""
	echo "systemd_interval=0"
	echo "include=/etc/php/7.4/fpm/pool.d/*.conf"
) > /etc/php/7.4/fpm/php-fpm.conf
