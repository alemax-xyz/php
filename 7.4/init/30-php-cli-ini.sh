#!/bin/sh

(
	if [ -n "${PHP_CLI_ALLOW_URL_FOPEN+1}" ]; then
		echo "allow_url_fopen=${PHP_CLI_ALLOW_URL_FOPEN}"
	elif [ -n "${PHP_ALLOW_URL_FOPEN+1}" ]; then
		echo "allow_url_fopen=${PHP_ALLOW_URL_FOPEN}"
	fi
	if [ -n "${PHP_CLI_ALLOW_URL_INCLUDE+1}" ]; then
		echo "allow_url_include=${PHP_CLI_ALLOW_URL_INCLUDE}"
	elif [ -n "${PHP_ALLOW_URL_INCLUDE+1}" ]; then
		echo "allow_url_include=${PHP_ALLOW_URL_INCLUDE}"
	fi
	if [ -n "${PHP_CLI_AMQP_AUTO_ACK+1}" ]; then
		echo "amqp.auto_ack=${PHP_CLI_AMQP_AUTO_ACK}"
	elif [ -n "${PHP_AMQP_AUTO_ACK+1}" ]; then
		echo "amqp.auto_ack=${PHP_AMQP_AUTO_ACK}"
	fi
	if [ -n "${PHP_CLI_AMQP_CACERT+1}" ]; then
		echo "amqp.cacert=${PHP_CLI_AMQP_CACERT}"
	elif [ -n "${PHP_AMQP_CACERT+1}" ]; then
		echo "amqp.cacert=${PHP_AMQP_CACERT}"
	fi
	if [ -n "${PHP_CLI_AMQP_CERT+1}" ]; then
		echo "amqp.cert=${PHP_CLI_AMQP_CERT}"
	elif [ -n "${PHP_AMQP_CERT+1}" ]; then
		echo "amqp.cert=${PHP_AMQP_CERT}"
	fi
	if [ -n "${PHP_CLI_AMQP_CHANNEL_MAX+1}" ]; then
		echo "amqp.channel_max=${PHP_CLI_AMQP_CHANNEL_MAX}"
	elif [ -n "${PHP_AMQP_CHANNEL_MAX+1}" ]; then
		echo "amqp.channel_max=${PHP_AMQP_CHANNEL_MAX}"
	fi
	if [ -n "${PHP_CLI_AMQP_CONNECT_TIMEOUT+1}" ]; then
		echo "amqp.connect_timeout=${PHP_CLI_AMQP_CONNECT_TIMEOUT}"
	elif [ -n "${PHP_AMQP_CONNECT_TIMEOUT+1}" ]; then
		echo "amqp.connect_timeout=${PHP_AMQP_CONNECT_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_AMQP_DESERIALIZATION_DEPTH+1}" ]; then
		echo "amqp.deserialization_depth=${PHP_CLI_AMQP_DESERIALIZATION_DEPTH}"
	elif [ -n "${PHP_AMQP_DESERIALIZATION_DEPTH+1}" ]; then
		echo "amqp.deserialization_depth=${PHP_AMQP_DESERIALIZATION_DEPTH}"
	fi
	if [ -n "${PHP_CLI_AMQP_FRAME_MAX+1}" ]; then
		echo "amqp.frame_max=${PHP_CLI_AMQP_FRAME_MAX}"
	elif [ -n "${PHP_AMQP_FRAME_MAX+1}" ]; then
		echo "amqp.frame_max=${PHP_AMQP_FRAME_MAX}"
	fi
	if [ -n "${PHP_CLI_AMQP_GLOBAL_PREFETCH_COUNT+1}" ]; then
		echo "amqp.global_prefetch_count=${PHP_CLI_AMQP_GLOBAL_PREFETCH_COUNT}"
	elif [ -n "${PHP_AMQP_GLOBAL_PREFETCH_COUNT+1}" ]; then
		echo "amqp.global_prefetch_count=${PHP_AMQP_GLOBAL_PREFETCH_COUNT}"
	fi
	if [ -n "${PHP_CLI_AMQP_GLOBAL_PREFETCH_SIZE+1}" ]; then
		echo "amqp.global_prefetch_size=${PHP_CLI_AMQP_GLOBAL_PREFETCH_SIZE}"
	elif [ -n "${PHP_AMQP_GLOBAL_PREFETCH_SIZE+1}" ]; then
		echo "amqp.global_prefetch_size=${PHP_AMQP_GLOBAL_PREFETCH_SIZE}"
	fi
	if [ -n "${PHP_CLI_AMQP_HEARTBEAT+1}" ]; then
		echo "amqp.heartbeat=${PHP_CLI_AMQP_HEARTBEAT}"
	elif [ -n "${PHP_AMQP_HEARTBEAT+1}" ]; then
		echo "amqp.heartbeat=${PHP_AMQP_HEARTBEAT}"
	fi
	if [ -n "${PHP_CLI_AMQP_HOST+1}" ]; then
		echo "amqp.host=${PHP_CLI_AMQP_HOST}"
	elif [ -n "${PHP_AMQP_HOST+1}" ]; then
		echo "amqp.host=${PHP_AMQP_HOST}"
	fi
	if [ -n "${PHP_CLI_AMQP_KEY+1}" ]; then
		echo "amqp.key=${PHP_CLI_AMQP_KEY}"
	elif [ -n "${PHP_AMQP_KEY+1}" ]; then
		echo "amqp.key=${PHP_AMQP_KEY}"
	fi
	if [ -n "${PHP_CLI_AMQP_LOGIN+1}" ]; then
		echo "amqp.login=${PHP_CLI_AMQP_LOGIN}"
	elif [ -n "${PHP_AMQP_LOGIN+1}" ]; then
		echo "amqp.login=${PHP_AMQP_LOGIN}"
	fi
	if [ -n "${PHP_CLI_AMQP_PASSWORD+1}" ]; then
		echo "amqp.password=${PHP_CLI_AMQP_PASSWORD}"
	elif [ -n "${PHP_AMQP_PASSWORD+1}" ]; then
		echo "amqp.password=${PHP_AMQP_PASSWORD}"
	fi
	if [ -n "${PHP_CLI_AMQP_PORT+1}" ]; then
		echo "amqp.port=${PHP_CLI_AMQP_PORT}"
	elif [ -n "${PHP_AMQP_PORT+1}" ]; then
		echo "amqp.port=${PHP_AMQP_PORT}"
	fi
	if [ -n "${PHP_CLI_AMQP_PREFETCH_COUNT+1}" ]; then
		echo "amqp.prefetch_count=${PHP_CLI_AMQP_PREFETCH_COUNT}"
	elif [ -n "${PHP_AMQP_PREFETCH_COUNT+1}" ]; then
		echo "amqp.prefetch_count=${PHP_AMQP_PREFETCH_COUNT}"
	fi
	if [ -n "${PHP_CLI_AMQP_PREFETCH_SIZE+1}" ]; then
		echo "amqp.prefetch_size=${PHP_CLI_AMQP_PREFETCH_SIZE}"
	elif [ -n "${PHP_AMQP_PREFETCH_SIZE+1}" ]; then
		echo "amqp.prefetch_size=${PHP_AMQP_PREFETCH_SIZE}"
	fi
	if [ -n "${PHP_CLI_AMQP_READ_TIMEOUT+1}" ]; then
		echo "amqp.read_timeout=${PHP_CLI_AMQP_READ_TIMEOUT}"
	elif [ -n "${PHP_AMQP_READ_TIMEOUT+1}" ]; then
		echo "amqp.read_timeout=${PHP_AMQP_READ_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_AMQP_RPC_TIMEOUT+1}" ]; then
		echo "amqp.rpc_timeout=${PHP_CLI_AMQP_RPC_TIMEOUT}"
	elif [ -n "${PHP_AMQP_RPC_TIMEOUT+1}" ]; then
		echo "amqp.rpc_timeout=${PHP_AMQP_RPC_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_AMQP_SASL_METHOD+1}" ]; then
		echo "amqp.sasl_method=${PHP_CLI_AMQP_SASL_METHOD}"
	elif [ -n "${PHP_AMQP_SASL_METHOD+1}" ]; then
		echo "amqp.sasl_method=${PHP_AMQP_SASL_METHOD}"
	fi
	if [ -n "${PHP_CLI_AMQP_SERIALIZATION_DEPTH+1}" ]; then
		echo "amqp.serialization_depth=${PHP_CLI_AMQP_SERIALIZATION_DEPTH}"
	elif [ -n "${PHP_AMQP_SERIALIZATION_DEPTH+1}" ]; then
		echo "amqp.serialization_depth=${PHP_AMQP_SERIALIZATION_DEPTH}"
	fi
	if [ -n "${PHP_CLI_AMQP_TIMEOUT+1}" ]; then
		echo "amqp.timeout=${PHP_CLI_AMQP_TIMEOUT}"
	elif [ -n "${PHP_AMQP_TIMEOUT+1}" ]; then
		echo "amqp.timeout=${PHP_AMQP_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_AMQP_VERIFY+1}" ]; then
		echo "amqp.verify=${PHP_CLI_AMQP_VERIFY}"
	elif [ -n "${PHP_AMQP_VERIFY+1}" ]; then
		echo "amqp.verify=${PHP_AMQP_VERIFY}"
	fi
	if [ -n "${PHP_CLI_AMQP_VHOST+1}" ]; then
		echo "amqp.vhost=${PHP_CLI_AMQP_VHOST}"
	elif [ -n "${PHP_AMQP_VHOST+1}" ]; then
		echo "amqp.vhost=${PHP_AMQP_VHOST}"
	fi
	if [ -n "${PHP_CLI_AMQP_WRITE_TIMEOUT+1}" ]; then
		echo "amqp.write_timeout=${PHP_CLI_AMQP_WRITE_TIMEOUT}"
	elif [ -n "${PHP_AMQP_WRITE_TIMEOUT+1}" ]; then
		echo "amqp.write_timeout=${PHP_AMQP_WRITE_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_APC_COREDUMP_UNMAP+1}" ]; then
		echo "apc.coredump_unmap=${PHP_CLI_APC_COREDUMP_UNMAP}"
	elif [ -n "${PHP_APC_COREDUMP_UNMAP+1}" ]; then
		echo "apc.coredump_unmap=${PHP_APC_COREDUMP_UNMAP}"
	fi
	if [ -n "${PHP_CLI_APC_ENABLE_CLI+1}" ]; then
		echo "apc.enable_cli=${PHP_CLI_APC_ENABLE_CLI}"
	elif [ -n "${PHP_APC_ENABLE_CLI+1}" ]; then
		echo "apc.enable_cli=${PHP_APC_ENABLE_CLI}"
	fi
	if [ -n "${PHP_CLI_APC_ENABLED+1}" ]; then
		echo "apc.enabled=${PHP_CLI_APC_ENABLED}"
	elif [ -n "${PHP_APC_ENABLED+1}" ]; then
		echo "apc.enabled=${PHP_APC_ENABLED}"
	fi
	if [ -n "${PHP_CLI_APC_ENTRIES_HINT+1}" ]; then
		echo "apc.entries_hint=${PHP_CLI_APC_ENTRIES_HINT}"
	elif [ -n "${PHP_APC_ENTRIES_HINT+1}" ]; then
		echo "apc.entries_hint=${PHP_APC_ENTRIES_HINT}"
	fi
	if [ -n "${PHP_CLI_APC_GC_TTL+1}" ]; then
		echo "apc.gc_ttl=${PHP_CLI_APC_GC_TTL}"
	elif [ -n "${PHP_APC_GC_TTL+1}" ]; then
		echo "apc.gc_ttl=${PHP_APC_GC_TTL}"
	fi
	if [ -n "${PHP_CLI_APC_MMAP_FILE_MASK+1}" ]; then
		echo "apc.mmap_file_mask=${PHP_CLI_APC_MMAP_FILE_MASK}"
	elif [ -n "${PHP_APC_MMAP_FILE_MASK+1}" ]; then
		echo "apc.mmap_file_mask=${PHP_APC_MMAP_FILE_MASK}"
	fi
	if [ -n "${PHP_CLI_APC_PRELOAD_PATH+1}" ]; then
		echo "apc.preload_path=${PHP_CLI_APC_PRELOAD_PATH}"
	elif [ -n "${PHP_APC_PRELOAD_PATH+1}" ]; then
		echo "apc.preload_path=${PHP_APC_PRELOAD_PATH}"
	fi
	if [ -n "${PHP_CLI_APC_SERIALIZER+1}" ]; then
		echo "apc.serializer=${PHP_CLI_APC_SERIALIZER}"
	elif [ -n "${PHP_APC_SERIALIZER+1}" ]; then
		echo "apc.serializer=${PHP_APC_SERIALIZER}"
	fi
	if [ -n "${PHP_CLI_APC_SHM_SEGMENTS+1}" ]; then
		echo "apc.shm_segments=${PHP_CLI_APC_SHM_SEGMENTS}"
	elif [ -n "${PHP_APC_SHM_SEGMENTS+1}" ]; then
		echo "apc.shm_segments=${PHP_APC_SHM_SEGMENTS}"
	fi
	if [ -n "${PHP_CLI_APC_SHM_SIZE+1}" ]; then
		echo "apc.shm_size=${PHP_CLI_APC_SHM_SIZE}"
	elif [ -n "${PHP_APC_SHM_SIZE+1}" ]; then
		echo "apc.shm_size=${PHP_APC_SHM_SIZE}"
	fi
	if [ -n "${PHP_CLI_APC_SLAM_DEFENSE+1}" ]; then
		echo "apc.slam_defense=${PHP_CLI_APC_SLAM_DEFENSE}"
	elif [ -n "${PHP_APC_SLAM_DEFENSE+1}" ]; then
		echo "apc.slam_defense=${PHP_APC_SLAM_DEFENSE}"
	fi
	if [ -n "${PHP_CLI_APC_SMART+1}" ]; then
		echo "apc.smart=${PHP_CLI_APC_SMART}"
	elif [ -n "${PHP_APC_SMART+1}" ]; then
		echo "apc.smart=${PHP_APC_SMART}"
	fi
	if [ -n "${PHP_CLI_APC_TTL+1}" ]; then
		echo "apc.ttl=${PHP_CLI_APC_TTL}"
	elif [ -n "${PHP_APC_TTL+1}" ]; then
		echo "apc.ttl=${PHP_APC_TTL}"
	fi
	if [ -n "${PHP_CLI_APC_USE_REQUEST_TIME+1}" ]; then
		echo "apc.use_request_time=${PHP_CLI_APC_USE_REQUEST_TIME}"
	elif [ -n "${PHP_APC_USE_REQUEST_TIME+1}" ]; then
		echo "apc.use_request_time=${PHP_APC_USE_REQUEST_TIME}"
	fi
	if [ -n "${PHP_CLI_ARG_SEPARATOR_INPUT+1}" ]; then
		echo "arg_separator.input=${PHP_CLI_ARG_SEPARATOR_INPUT}"
	elif [ -n "${PHP_ARG_SEPARATOR_INPUT+1}" ]; then
		echo "arg_separator.input=${PHP_ARG_SEPARATOR_INPUT}"
	fi
	if [ -n "${PHP_CLI_ARG_SEPARATOR_OUTPUT+1}" ]; then
		echo "arg_separator.output=${PHP_CLI_ARG_SEPARATOR_OUTPUT}"
	elif [ -n "${PHP_ARG_SEPARATOR_OUTPUT+1}" ]; then
		echo "arg_separator.output=${PHP_ARG_SEPARATOR_OUTPUT}"
	fi
	if [ -n "${PHP_CLI_ASSERT_ACTIVE+1}" ]; then
		echo "assert.active=${PHP_CLI_ASSERT_ACTIVE}"
	elif [ -n "${PHP_ASSERT_ACTIVE+1}" ]; then
		echo "assert.active=${PHP_ASSERT_ACTIVE}"
	fi
	if [ -n "${PHP_CLI_ASSERT_BAIL+1}" ]; then
		echo "assert.bail=${PHP_CLI_ASSERT_BAIL}"
	elif [ -n "${PHP_ASSERT_BAIL+1}" ]; then
		echo "assert.bail=${PHP_ASSERT_BAIL}"
	fi
	if [ -n "${PHP_CLI_ASSERT_CALLBACK+1}" ]; then
		echo "assert.callback=${PHP_CLI_ASSERT_CALLBACK}"
	elif [ -n "${PHP_ASSERT_CALLBACK+1}" ]; then
		echo "assert.callback=${PHP_ASSERT_CALLBACK}"
	fi
	if [ -n "${PHP_CLI_ASSERT_EXCEPTION+1}" ]; then
		echo "assert.exception=${PHP_CLI_ASSERT_EXCEPTION}"
	elif [ -n "${PHP_ASSERT_EXCEPTION+1}" ]; then
		echo "assert.exception=${PHP_ASSERT_EXCEPTION}"
	fi
	if [ -n "${PHP_CLI_ASSERT_QUIET_EVAL+1}" ]; then
		echo "assert.quiet_eval=${PHP_CLI_ASSERT_QUIET_EVAL}"
	elif [ -n "${PHP_ASSERT_QUIET_EVAL+1}" ]; then
		echo "assert.quiet_eval=${PHP_ASSERT_QUIET_EVAL}"
	fi
	if [ -n "${PHP_CLI_ASSERT_WARNING+1}" ]; then
		echo "assert.warning=${PHP_CLI_ASSERT_WARNING}"
	elif [ -n "${PHP_ASSERT_WARNING+1}" ]; then
		echo "assert.warning=${PHP_ASSERT_WARNING}"
	fi
	if [ -n "${PHP_CLI_AUTO_APPEND_FILE+1}" ]; then
		echo "auto_append_file=${PHP_CLI_AUTO_APPEND_FILE}"
	elif [ -n "${PHP_AUTO_APPEND_FILE+1}" ]; then
		echo "auto_append_file=${PHP_AUTO_APPEND_FILE}"
	fi
	if [ -n "${PHP_CLI_AUTO_DETECT_LINE_ENDINGS+1}" ]; then
		echo "auto_detect_line_endings=${PHP_CLI_AUTO_DETECT_LINE_ENDINGS}"
	elif [ -n "${PHP_AUTO_DETECT_LINE_ENDINGS+1}" ]; then
		echo "auto_detect_line_endings=${PHP_AUTO_DETECT_LINE_ENDINGS}"
	fi
	if [ -n "${PHP_CLI_AUTO_GLOBALS_JIT+1}" ]; then
		echo "auto_globals_jit=${PHP_CLI_AUTO_GLOBALS_JIT}"
	elif [ -n "${PHP_AUTO_GLOBALS_JIT+1}" ]; then
		echo "auto_globals_jit=${PHP_AUTO_GLOBALS_JIT}"
	fi
	if [ -n "${PHP_CLI_AUTO_PREPEND_FILE+1}" ]; then
		echo "auto_prepend_file=${PHP_CLI_AUTO_PREPEND_FILE}"
	elif [ -n "${PHP_AUTO_PREPEND_FILE+1}" ]; then
		echo "auto_prepend_file=${PHP_AUTO_PREPEND_FILE}"
	fi
	if [ -n "${PHP_CLI_BCMATH_SCALE+1}" ]; then
		echo "bcmath.scale=${PHP_CLI_BCMATH_SCALE}"
	elif [ -n "${PHP_BCMATH_SCALE+1}" ]; then
		echo "bcmath.scale=${PHP_BCMATH_SCALE}"
	fi
	if [ -n "${PHP_CLI_BROWSCAP+1}" ]; then
		echo "browscap=${PHP_CLI_BROWSCAP}"
	elif [ -n "${PHP_BROWSCAP+1}" ]; then
		echo "browscap=${PHP_BROWSCAP}"
	fi
	if [ -n "${PHP_CLI_CLI_PAGER+1}" ]; then
		echo "cli.pager=${PHP_CLI_CLI_PAGER}"
	elif [ -n "${PHP_CLI_PAGER+1}" ]; then
		echo "cli.pager=${PHP_CLI_PAGER}"
	fi
	if [ -n "${PHP_CLI_CLI_PROMPT+1}" ]; then
		echo "cli.prompt=${PHP_CLI_CLI_PROMPT}"
	elif [ -n "${PHP_CLI_PROMPT+1}" ]; then
		echo "cli.prompt=${PHP_CLI_PROMPT}"
	fi
	if [ -n "${PHP_CLI_CURL_CAINFO+1}" ]; then
		echo "curl.cainfo=${PHP_CLI_CURL_CAINFO}"
	elif [ -n "${PHP_CURL_CAINFO+1}" ]; then
		echo "curl.cainfo=${PHP_CURL_CAINFO}"
	fi
	if [ -n "${PHP_CLI_DATE_DEFAULT_LATITUDE+1}" ]; then
		echo "date.default_latitude=${PHP_CLI_DATE_DEFAULT_LATITUDE}"
	elif [ -n "${PHP_DATE_DEFAULT_LATITUDE+1}" ]; then
		echo "date.default_latitude=${PHP_DATE_DEFAULT_LATITUDE}"
	fi
	if [ -n "${PHP_CLI_DATE_DEFAULT_LONGITUDE+1}" ]; then
		echo "date.default_longitude=${PHP_CLI_DATE_DEFAULT_LONGITUDE}"
	elif [ -n "${PHP_DATE_DEFAULT_LONGITUDE+1}" ]; then
		echo "date.default_longitude=${PHP_DATE_DEFAULT_LONGITUDE}"
	fi
	if [ -n "${PHP_CLI_DATE_SUNRISE_ZENITH+1}" ]; then
		echo "date.sunrise_zenith=${PHP_CLI_DATE_SUNRISE_ZENITH}"
	elif [ -n "${PHP_DATE_SUNRISE_ZENITH+1}" ]; then
		echo "date.sunrise_zenith=${PHP_DATE_SUNRISE_ZENITH}"
	fi
	if [ -n "${PHP_CLI_DATE_SUNSET_ZENITH+1}" ]; then
		echo "date.sunset_zenith=${PHP_CLI_DATE_SUNSET_ZENITH}"
	elif [ -n "${PHP_DATE_SUNSET_ZENITH+1}" ]; then
		echo "date.sunset_zenith=${PHP_DATE_SUNSET_ZENITH}"
	fi
	if [ -n "${PHP_CLI_DATE_TIMEZONE+1}" ]; then
		echo "date.timezone=${PHP_CLI_DATE_TIMEZONE}"
	elif [ -n "${PHP_DATE_TIMEZONE+1}" ]; then
		echo "date.timezone=${PHP_DATE_TIMEZONE}"
	fi
	if [ -n "${PHP_CLI_DBA_DEFAULT_HANDLER+1}" ]; then
		echo "dba.default_handler=${PHP_CLI_DBA_DEFAULT_HANDLER}"
	elif [ -n "${PHP_DBA_DEFAULT_HANDLER+1}" ]; then
		echo "dba.default_handler=${PHP_DBA_DEFAULT_HANDLER}"
	fi
	if [ -n "${PHP_CLI_DEFAULT_CHARSET+1}" ]; then
		echo "default_charset=${PHP_CLI_DEFAULT_CHARSET}"
	elif [ -n "${PHP_DEFAULT_CHARSET+1}" ]; then
		echo "default_charset=${PHP_DEFAULT_CHARSET}"
	fi
	if [ -n "${PHP_CLI_DEFAULT_MIMETYPE+1}" ]; then
		echo "default_mimetype=${PHP_CLI_DEFAULT_MIMETYPE}"
	elif [ -n "${PHP_DEFAULT_MIMETYPE+1}" ]; then
		echo "default_mimetype=${PHP_DEFAULT_MIMETYPE}"
	fi
	if [ -n "${PHP_CLI_DEFAULT_SOCKET_TIMEOUT+1}" ]; then
		echo "default_socket_timeout=${PHP_CLI_DEFAULT_SOCKET_TIMEOUT}"
	elif [ -n "${PHP_DEFAULT_SOCKET_TIMEOUT+1}" ]; then
		echo "default_socket_timeout=${PHP_DEFAULT_SOCKET_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_DISABLE_CLASSES+1}" ]; then
		echo "disable_classes=${PHP_CLI_DISABLE_CLASSES}"
	elif [ -n "${PHP_DISABLE_CLASSES+1}" ]; then
		echo "disable_classes=${PHP_DISABLE_CLASSES}"
	fi
	if [ -n "${PHP_CLI_DISABLE_FUNCTIONS+1}" ]; then
		echo "disable_functions=${PHP_CLI_DISABLE_FUNCTIONS}"
	elif [ -n "${PHP_DISABLE_FUNCTIONS+1}" ]; then
		echo "disable_functions=${PHP_DISABLE_FUNCTIONS}"
	fi
	if [ -n "${PHP_CLI_DISPLAY_ERRORS+1}" ]; then
		echo "display_errors=${PHP_CLI_DISPLAY_ERRORS}"
	elif [ -n "${PHP_DISPLAY_ERRORS+1}" ]; then
		echo "display_errors=${PHP_DISPLAY_ERRORS}"
	fi
	if [ -n "${PHP_CLI_DISPLAY_STARTUP_ERRORS+1}" ]; then
		echo "display_startup_errors=${PHP_CLI_DISPLAY_STARTUP_ERRORS}"
	elif [ -n "${PHP_DISPLAY_STARTUP_ERRORS+1}" ]; then
		echo "display_startup_errors=${PHP_DISPLAY_STARTUP_ERRORS}"
	fi
	if [ -n "${PHP_CLI_DOC_ROOT+1}" ]; then
		echo "doc_root=${PHP_CLI_DOC_ROOT}"
	elif [ -n "${PHP_DOC_ROOT+1}" ]; then
		echo "doc_root=${PHP_DOC_ROOT}"
	fi
	if [ -n "${PHP_CLI_DOCREF_EXT+1}" ]; then
		echo "docref_ext=${PHP_CLI_DOCREF_EXT}"
	elif [ -n "${PHP_DOCREF_EXT+1}" ]; then
		echo "docref_ext=${PHP_DOCREF_EXT}"
	fi
	if [ -n "${PHP_CLI_DOCREF_ROOT+1}" ]; then
		echo "docref_root=${PHP_CLI_DOCREF_ROOT}"
	elif [ -n "${PHP_DOCREF_ROOT+1}" ]; then
		echo "docref_root=${PHP_DOCREF_ROOT}"
	fi
	if [ -n "${PHP_CLI_ENABLE_DL+1}" ]; then
		echo "enable_dl=${PHP_CLI_ENABLE_DL}"
	elif [ -n "${PHP_ENABLE_DL+1}" ]; then
		echo "enable_dl=${PHP_ENABLE_DL}"
	fi
	if [ -n "${PHP_CLI_ENABLE_POST_DATA_READING+1}" ]; then
		echo "enable_post_data_reading=${PHP_CLI_ENABLE_POST_DATA_READING}"
	elif [ -n "${PHP_ENABLE_POST_DATA_READING+1}" ]; then
		echo "enable_post_data_reading=${PHP_ENABLE_POST_DATA_READING}"
	fi
	if [ -n "${PHP_CLI_ERROR_APPEND_STRING+1}" ]; then
		echo "error_append_string=${PHP_CLI_ERROR_APPEND_STRING}"
	elif [ -n "${PHP_ERROR_APPEND_STRING+1}" ]; then
		echo "error_append_string=${PHP_ERROR_APPEND_STRING}"
	fi
	if [ -n "${PHP_CLI_ERROR_LOG+1}" ]; then
		echo "error_log=${PHP_CLI_ERROR_LOG}"
	elif [ -n "${PHP_ERROR_LOG+1}" ]; then
		echo "error_log=${PHP_ERROR_LOG}"
	fi
	if [ -n "${PHP_CLI_ERROR_PREPEND_STRING+1}" ]; then
		echo "error_prepend_string=${PHP_CLI_ERROR_PREPEND_STRING}"
	elif [ -n "${PHP_ERROR_PREPEND_STRING+1}" ]; then
		echo "error_prepend_string=${PHP_ERROR_PREPEND_STRING}"
	fi
	if [ -n "${PHP_CLI_ERROR_REPORTING+1}" ]; then
		echo "error_reporting=${PHP_CLI_ERROR_REPORTING}"
	elif [ -n "${PHP_ERROR_REPORTING+1}" ]; then
		echo "error_reporting=${PHP_ERROR_REPORTING}"
	fi
	if [ -n "${PHP_CLI_EXIF_DECODE_JIS_INTEL+1}" ]; then
		echo "exif.decode_jis_intel=${PHP_CLI_EXIF_DECODE_JIS_INTEL}"
	elif [ -n "${PHP_EXIF_DECODE_JIS_INTEL+1}" ]; then
		echo "exif.decode_jis_intel=${PHP_EXIF_DECODE_JIS_INTEL}"
	fi
	if [ -n "${PHP_CLI_EXIF_DECODE_JIS_MOTOROLA+1}" ]; then
		echo "exif.decode_jis_motorola=${PHP_CLI_EXIF_DECODE_JIS_MOTOROLA}"
	elif [ -n "${PHP_EXIF_DECODE_JIS_MOTOROLA+1}" ]; then
		echo "exif.decode_jis_motorola=${PHP_EXIF_DECODE_JIS_MOTOROLA}"
	fi
	if [ -n "${PHP_CLI_EXIF_DECODE_UNICODE_INTEL+1}" ]; then
		echo "exif.decode_unicode_intel=${PHP_CLI_EXIF_DECODE_UNICODE_INTEL}"
	elif [ -n "${PHP_EXIF_DECODE_UNICODE_INTEL+1}" ]; then
		echo "exif.decode_unicode_intel=${PHP_EXIF_DECODE_UNICODE_INTEL}"
	fi
	if [ -n "${PHP_CLI_EXIF_DECODE_UNICODE_MOTOROLA+1}" ]; then
		echo "exif.decode_unicode_motorola=${PHP_CLI_EXIF_DECODE_UNICODE_MOTOROLA}"
	elif [ -n "${PHP_EXIF_DECODE_UNICODE_MOTOROLA+1}" ]; then
		echo "exif.decode_unicode_motorola=${PHP_EXIF_DECODE_UNICODE_MOTOROLA}"
	fi
	if [ -n "${PHP_CLI_EXIF_ENCODE_JIS+1}" ]; then
		echo "exif.encode_jis=${PHP_CLI_EXIF_ENCODE_JIS}"
	elif [ -n "${PHP_EXIF_ENCODE_JIS+1}" ]; then
		echo "exif.encode_jis=${PHP_EXIF_ENCODE_JIS}"
	fi
	if [ -n "${PHP_CLI_EXIF_ENCODE_UNICODE+1}" ]; then
		echo "exif.encode_unicode=${PHP_CLI_EXIF_ENCODE_UNICODE}"
	elif [ -n "${PHP_EXIF_ENCODE_UNICODE+1}" ]; then
		echo "exif.encode_unicode=${PHP_EXIF_ENCODE_UNICODE}"
	fi
	if [ -n "${PHP_CLI_EXPOSE_PHP+1}" ]; then
		echo "expose_php=${PHP_CLI_EXPOSE_PHP}"
	elif [ -n "${PHP_EXPOSE_PHP+1}" ]; then
		echo "expose_php=${PHP_EXPOSE_PHP}"
	fi
	if [ -n "${PHP_CLI_EXTENSION_DIR+1}" ]; then
		echo "extension_dir=${PHP_CLI_EXTENSION_DIR}"
	elif [ -n "${PHP_EXTENSION_DIR+1}" ]; then
		echo "extension_dir=${PHP_EXTENSION_DIR}"
	fi
	if [ -n "${PHP_CLI_FFI_ENABLE+1}" ]; then
		echo "ffi.enable=${PHP_CLI_FFI_ENABLE}"
	elif [ -n "${PHP_FFI_ENABLE+1}" ]; then
		echo "ffi.enable=${PHP_FFI_ENABLE}"
	fi
	if [ -n "${PHP_CLI_FFI_PRELOAD+1}" ]; then
		echo "ffi.preload=${PHP_CLI_FFI_PRELOAD}"
	elif [ -n "${PHP_FFI_PRELOAD+1}" ]; then
		echo "ffi.preload=${PHP_FFI_PRELOAD}"
	fi
	if [ -n "${PHP_CLI_FILE_UPLOADS+1}" ]; then
		echo "file_uploads=${PHP_CLI_FILE_UPLOADS}"
	elif [ -n "${PHP_FILE_UPLOADS+1}" ]; then
		echo "file_uploads=${PHP_FILE_UPLOADS}"
	fi
	if [ -n "${PHP_CLI_FILTER_DEFAULT+1}" ]; then
		echo "filter.default=${PHP_CLI_FILTER_DEFAULT}"
	elif [ -n "${PHP_FILTER_DEFAULT+1}" ]; then
		echo "filter.default=${PHP_FILTER_DEFAULT}"
	fi
	if [ -n "${PHP_CLI_FILTER_DEFAULT_FLAGS+1}" ]; then
		echo "filter.default_flags=${PHP_CLI_FILTER_DEFAULT_FLAGS}"
	elif [ -n "${PHP_FILTER_DEFAULT_FLAGS+1}" ]; then
		echo "filter.default_flags=${PHP_FILTER_DEFAULT_FLAGS}"
	fi
	if [ -n "${PHP_CLI_FROM+1}" ]; then
		echo "from=${PHP_CLI_FROM}"
	elif [ -n "${PHP_FROM+1}" ]; then
		echo "from=${PHP_FROM}"
	fi
	if [ -n "${PHP_CLI_GD_JPEG_IGNORE_WARNING+1}" ]; then
		echo "gd.jpeg_ignore_warning=${PHP_CLI_GD_JPEG_IGNORE_WARNING}"
	elif [ -n "${PHP_GD_JPEG_IGNORE_WARNING+1}" ]; then
		echo "gd.jpeg_ignore_warning=${PHP_GD_JPEG_IGNORE_WARNING}"
	fi
	if [ -n "${PHP_CLI_GEOIP_CUSTOM_DIRECTORY+1}" ]; then
		echo "geoip.custom_directory=${PHP_CLI_GEOIP_CUSTOM_DIRECTORY}"
	elif [ -n "${PHP_GEOIP_CUSTOM_DIRECTORY+1}" ]; then
		echo "geoip.custom_directory=${PHP_GEOIP_CUSTOM_DIRECTORY}"
	fi
	if [ -n "${PHP_CLI_GRPC_ENABLE_FORK_SUPPORT+1}" ]; then
		echo "grpc.enable_fork_support=${PHP_CLI_GRPC_ENABLE_FORK_SUPPORT}"
	elif [ -n "${PHP_GRPC_ENABLE_FORK_SUPPORT+1}" ]; then
		echo "grpc.enable_fork_support=${PHP_GRPC_ENABLE_FORK_SUPPORT}"
	fi
	if [ -n "${PHP_CLI_GRPC_GRPC_TRACE+1}" ]; then
		echo "grpc.grpc_trace=${PHP_CLI_GRPC_GRPC_TRACE}"
	elif [ -n "${PHP_GRPC_GRPC_TRACE+1}" ]; then
		echo "grpc.grpc_trace=${PHP_GRPC_GRPC_TRACE}"
	fi
	if [ -n "${PHP_CLI_GRPC_GRPC_VERBOSITY+1}" ]; then
		echo "grpc.grpc_verbosity=${PHP_CLI_GRPC_GRPC_VERBOSITY}"
	elif [ -n "${PHP_GRPC_GRPC_VERBOSITY+1}" ]; then
		echo "grpc.grpc_verbosity=${PHP_GRPC_GRPC_VERBOSITY}"
	fi
	if [ -n "${PHP_CLI_GRPC_LOG_FILENAME+1}" ]; then
		echo "grpc.log_filename=${PHP_CLI_GRPC_LOG_FILENAME}"
	elif [ -n "${PHP_GRPC_LOG_FILENAME+1}" ]; then
		echo "grpc.log_filename=${PHP_GRPC_LOG_FILENAME}"
	fi
	if [ -n "${PHP_CLI_GRPC_POLL_STRATEGY+1}" ]; then
		echo "grpc.poll_strategy=${PHP_CLI_GRPC_POLL_STRATEGY}"
	elif [ -n "${PHP_GRPC_POLL_STRATEGY+1}" ]; then
		echo "grpc.poll_strategy=${PHP_GRPC_POLL_STRATEGY}"
	fi
	if [ -n "${PHP_CLI_HARD_TIMEOUT+1}" ]; then
		echo "hard_timeout=${PHP_CLI_HARD_TIMEOUT}"
	elif [ -n "${PHP_HARD_TIMEOUT+1}" ]; then
		echo "hard_timeout=${PHP_HARD_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_HIGHLIGHT_COMMENT+1}" ]; then
		echo "highlight.comment=${PHP_CLI_HIGHLIGHT_COMMENT}"
	elif [ -n "${PHP_HIGHLIGHT_COMMENT+1}" ]; then
		echo "highlight.comment=${PHP_HIGHLIGHT_COMMENT}"
	fi
	if [ -n "${PHP_CLI_HIGHLIGHT_DEFAULT+1}" ]; then
		echo "highlight.default=${PHP_CLI_HIGHLIGHT_DEFAULT}"
	elif [ -n "${PHP_HIGHLIGHT_DEFAULT+1}" ]; then
		echo "highlight.default=${PHP_HIGHLIGHT_DEFAULT}"
	fi
	if [ -n "${PHP_CLI_HIGHLIGHT_HTML+1}" ]; then
		echo "highlight.html=${PHP_CLI_HIGHLIGHT_HTML}"
	elif [ -n "${PHP_HIGHLIGHT_HTML+1}" ]; then
		echo "highlight.html=${PHP_HIGHLIGHT_HTML}"
	fi
	if [ -n "${PHP_CLI_HIGHLIGHT_KEYWORD+1}" ]; then
		echo "highlight.keyword=${PHP_CLI_HIGHLIGHT_KEYWORD}"
	elif [ -n "${PHP_HIGHLIGHT_KEYWORD+1}" ]; then
		echo "highlight.keyword=${PHP_HIGHLIGHT_KEYWORD}"
	fi
	if [ -n "${PHP_CLI_HIGHLIGHT_STRING+1}" ]; then
		echo "highlight.string=${PHP_CLI_HIGHLIGHT_STRING}"
	elif [ -n "${PHP_HIGHLIGHT_STRING+1}" ]; then
		echo "highlight.string=${PHP_HIGHLIGHT_STRING}"
	fi
	if [ -n "${PHP_CLI_HTML_ERRORS+1}" ]; then
		echo "html_errors=${PHP_CLI_HTML_ERRORS}"
	elif [ -n "${PHP_HTML_ERRORS+1}" ]; then
		echo "html_errors=${PHP_HTML_ERRORS}"
	fi
	if [ -n "${PHP_CLI_HTTP_ETAG_MODE+1}" ]; then
		echo "http.etag.mode=${PHP_CLI_HTTP_ETAG_MODE}"
	elif [ -n "${PHP_HTTP_ETAG_MODE+1}" ]; then
		echo "http.etag.mode=${PHP_HTTP_ETAG_MODE}"
	fi
	if [ -n "${PHP_CLI_ICONV_INPUT_ENCODING+1}" ]; then
		echo "iconv.input_encoding=${PHP_CLI_ICONV_INPUT_ENCODING}"
	elif [ -n "${PHP_ICONV_INPUT_ENCODING+1}" ]; then
		echo "iconv.input_encoding=${PHP_ICONV_INPUT_ENCODING}"
	fi
	if [ -n "${PHP_CLI_ICONV_INTERNAL_ENCODING+1}" ]; then
		echo "iconv.internal_encoding=${PHP_CLI_ICONV_INTERNAL_ENCODING}"
	elif [ -n "${PHP_ICONV_INTERNAL_ENCODING+1}" ]; then
		echo "iconv.internal_encoding=${PHP_ICONV_INTERNAL_ENCODING}"
	fi
	if [ -n "${PHP_CLI_ICONV_OUTPUT_ENCODING+1}" ]; then
		echo "iconv.output_encoding=${PHP_CLI_ICONV_OUTPUT_ENCODING}"
	elif [ -n "${PHP_ICONV_OUTPUT_ENCODING+1}" ]; then
		echo "iconv.output_encoding=${PHP_ICONV_OUTPUT_ENCODING}"
	fi
	if [ -n "${PHP_CLI_IGBINARY_COMPACT_STRINGS+1}" ]; then
		echo "igbinary.compact_strings=${PHP_CLI_IGBINARY_COMPACT_STRINGS}"
	elif [ -n "${PHP_IGBINARY_COMPACT_STRINGS+1}" ]; then
		echo "igbinary.compact_strings=${PHP_IGBINARY_COMPACT_STRINGS}"
	fi
	if [ -n "${PHP_CLI_IGNORE_REPEATED_ERRORS+1}" ]; then
		echo "ignore_repeated_errors=${PHP_CLI_IGNORE_REPEATED_ERRORS}"
	elif [ -n "${PHP_IGNORE_REPEATED_ERRORS+1}" ]; then
		echo "ignore_repeated_errors=${PHP_IGNORE_REPEATED_ERRORS}"
	fi
	if [ -n "${PHP_CLI_IGNORE_REPEATED_SOURCE+1}" ]; then
		echo "ignore_repeated_source=${PHP_CLI_IGNORE_REPEATED_SOURCE}"
	elif [ -n "${PHP_IGNORE_REPEATED_SOURCE+1}" ]; then
		echo "ignore_repeated_source=${PHP_IGNORE_REPEATED_SOURCE}"
	fi
	if [ -n "${PHP_CLI_IGNORE_USER_ABORT+1}" ]; then
		echo "ignore_user_abort=${PHP_CLI_IGNORE_USER_ABORT}"
	elif [ -n "${PHP_IGNORE_USER_ABORT+1}" ]; then
		echo "ignore_user_abort=${PHP_IGNORE_USER_ABORT}"
	fi
	if [ -n "${PHP_CLI_IMAGICK_ALLOW_ZERO_DIMENSION_IMAGES+1}" ]; then
		echo "imagick.allow_zero_dimension_images=${PHP_CLI_IMAGICK_ALLOW_ZERO_DIMENSION_IMAGES}"
	elif [ -n "${PHP_IMAGICK_ALLOW_ZERO_DIMENSION_IMAGES+1}" ]; then
		echo "imagick.allow_zero_dimension_images=${PHP_IMAGICK_ALLOW_ZERO_DIMENSION_IMAGES}"
	fi
	if [ -n "${PHP_CLI_IMAGICK_LOCALE_FIX+1}" ]; then
		echo "imagick.locale_fix=${PHP_CLI_IMAGICK_LOCALE_FIX}"
	elif [ -n "${PHP_IMAGICK_LOCALE_FIX+1}" ]; then
		echo "imagick.locale_fix=${PHP_IMAGICK_LOCALE_FIX}"
	fi
	if [ -n "${PHP_CLI_IMAGICK_PROGRESS_MONITOR+1}" ]; then
		echo "imagick.progress_monitor=${PHP_CLI_IMAGICK_PROGRESS_MONITOR}"
	elif [ -n "${PHP_IMAGICK_PROGRESS_MONITOR+1}" ]; then
		echo "imagick.progress_monitor=${PHP_IMAGICK_PROGRESS_MONITOR}"
	fi
	if [ -n "${PHP_CLI_IMAGICK_SET_SINGLE_THREAD+1}" ]; then
		echo "imagick.set_single_thread=${PHP_CLI_IMAGICK_SET_SINGLE_THREAD}"
	elif [ -n "${PHP_IMAGICK_SET_SINGLE_THREAD+1}" ]; then
		echo "imagick.set_single_thread=${PHP_IMAGICK_SET_SINGLE_THREAD}"
	fi
	if [ -n "${PHP_CLI_IMAGICK_SHUTDOWN_SLEEP_COUNT+1}" ]; then
		echo "imagick.shutdown_sleep_count=${PHP_CLI_IMAGICK_SHUTDOWN_SLEEP_COUNT}"
	elif [ -n "${PHP_IMAGICK_SHUTDOWN_SLEEP_COUNT+1}" ]; then
		echo "imagick.shutdown_sleep_count=${PHP_IMAGICK_SHUTDOWN_SLEEP_COUNT}"
	fi
	if [ -n "${PHP_CLI_IMAGICK_SKIP_VERSION_CHECK+1}" ]; then
		echo "imagick.skip_version_check=${PHP_CLI_IMAGICK_SKIP_VERSION_CHECK}"
	elif [ -n "${PHP_IMAGICK_SKIP_VERSION_CHECK+1}" ]; then
		echo "imagick.skip_version_check=${PHP_IMAGICK_SKIP_VERSION_CHECK}"
	fi
	if [ -n "${PHP_CLI_IMAP_ENABLE_INSECURE_RSH+1}" ]; then
		echo "imap.enable_insecure_rsh=${PHP_CLI_IMAP_ENABLE_INSECURE_RSH}"
	elif [ -n "${PHP_IMAP_ENABLE_INSECURE_RSH+1}" ]; then
		echo "imap.enable_insecure_rsh=${PHP_IMAP_ENABLE_INSECURE_RSH}"
	fi
	if [ -n "${PHP_CLI_IMPLICIT_FLUSH+1}" ]; then
		echo "implicit_flush=${PHP_CLI_IMPLICIT_FLUSH}"
	elif [ -n "${PHP_IMPLICIT_FLUSH+1}" ]; then
		echo "implicit_flush=${PHP_IMPLICIT_FLUSH}"
	fi
	if [ -n "${PHP_CLI_INCLUDE_PATH+1}" ]; then
		echo "include_path=${PHP_CLI_INCLUDE_PATH}"
	elif [ -n "${PHP_INCLUDE_PATH+1}" ]; then
		echo "include_path=${PHP_INCLUDE_PATH}"
	fi
	if [ -n "${PHP_CLI_INPUT_ENCODING+1}" ]; then
		echo "input_encoding=${PHP_CLI_INPUT_ENCODING}"
	elif [ -n "${PHP_INPUT_ENCODING+1}" ]; then
		echo "input_encoding=${PHP_INPUT_ENCODING}"
	fi
	if [ -n "${PHP_CLI_INTERNAL_ENCODING+1}" ]; then
		echo "internal_encoding=${PHP_CLI_INTERNAL_ENCODING}"
	elif [ -n "${PHP_INTERNAL_ENCODING+1}" ]; then
		echo "internal_encoding=${PHP_INTERNAL_ENCODING}"
	fi
	if [ -n "${PHP_CLI_INTL_DEFAULT_LOCALE+1}" ]; then
		echo "intl.default_locale=${PHP_CLI_INTL_DEFAULT_LOCALE}"
	elif [ -n "${PHP_INTL_DEFAULT_LOCALE+1}" ]; then
		echo "intl.default_locale=${PHP_INTL_DEFAULT_LOCALE}"
	fi
	if [ -n "${PHP_CLI_INTL_ERROR_LEVEL+1}" ]; then
		echo "intl.error_level=${PHP_CLI_INTL_ERROR_LEVEL}"
	elif [ -n "${PHP_INTL_ERROR_LEVEL+1}" ]; then
		echo "intl.error_level=${PHP_INTL_ERROR_LEVEL}"
	fi
	if [ -n "${PHP_CLI_INTL_USE_EXCEPTIONS+1}" ]; then
		echo "intl.use_exceptions=${PHP_CLI_INTL_USE_EXCEPTIONS}"
	elif [ -n "${PHP_INTL_USE_EXCEPTIONS+1}" ]; then
		echo "intl.use_exceptions=${PHP_INTL_USE_EXCEPTIONS}"
	fi
	if [ -n "${PHP_CLI_LDAP_MAX_LINKS+1}" ]; then
		echo "ldap.max_links=${PHP_CLI_LDAP_MAX_LINKS}"
	elif [ -n "${PHP_LDAP_MAX_LINKS+1}" ]; then
		echo "ldap.max_links=${PHP_LDAP_MAX_LINKS}"
	fi
	if [ -n "${PHP_CLI_LIBVIRT_IMAGE_PATH+1}" ]; then
		echo "libvirt.image_path=${PHP_CLI_LIBVIRT_IMAGE_PATH}"
	elif [ -n "${PHP_LIBVIRT_IMAGE_PATH+1}" ]; then
		echo "libvirt.image_path=${PHP_LIBVIRT_IMAGE_PATH}"
	fi
	if [ -n "${PHP_CLI_LIBVIRT_ISO_PATH+1}" ]; then
		echo "libvirt.iso_path=${PHP_CLI_LIBVIRT_ISO_PATH}"
	elif [ -n "${PHP_LIBVIRT_ISO_PATH+1}" ]; then
		echo "libvirt.iso_path=${PHP_LIBVIRT_ISO_PATH}"
	fi
	if [ -n "${PHP_CLI_LIBVIRT_LONGLONG_TO_STRING+1}" ]; then
		echo "libvirt.longlong_to_string=${PHP_CLI_LIBVIRT_LONGLONG_TO_STRING}"
	elif [ -n "${PHP_LIBVIRT_LONGLONG_TO_STRING+1}" ]; then
		echo "libvirt.longlong_to_string=${PHP_LIBVIRT_LONGLONG_TO_STRING}"
	fi
	if [ -n "${PHP_CLI_LIBVIRT_MAX_CONNECTIONS+1}" ]; then
		echo "libvirt.max_connections=${PHP_CLI_LIBVIRT_MAX_CONNECTIONS}"
	elif [ -n "${PHP_LIBVIRT_MAX_CONNECTIONS+1}" ]; then
		echo "libvirt.max_connections=${PHP_LIBVIRT_MAX_CONNECTIONS}"
	fi
	if [ -n "${PHP_CLI_LIBVIRT_SIGNED_LONGLONG_TO_STRING+1}" ]; then
		echo "libvirt.signed_longlong_to_string=${PHP_CLI_LIBVIRT_SIGNED_LONGLONG_TO_STRING}"
	elif [ -n "${PHP_LIBVIRT_SIGNED_LONGLONG_TO_STRING+1}" ]; then
		echo "libvirt.signed_longlong_to_string=${PHP_LIBVIRT_SIGNED_LONGLONG_TO_STRING}"
	fi
	if [ -n "${PHP_CLI_LOG_ERRORS+1}" ]; then
		echo "log_errors=${PHP_CLI_LOG_ERRORS}"
	elif [ -n "${PHP_LOG_ERRORS+1}" ]; then
		echo "log_errors=${PHP_LOG_ERRORS}"
	fi
	if [ -n "${PHP_CLI_LOG_ERRORS_MAX_LEN+1}" ]; then
		echo "log_errors_max_len=${PHP_CLI_LOG_ERRORS_MAX_LEN}"
	elif [ -n "${PHP_LOG_ERRORS_MAX_LEN+1}" ]; then
		echo "log_errors_max_len=${PHP_LOG_ERRORS_MAX_LEN}"
	fi
	if [ -n "${PHP_CLI_MAIL_ADD_X_HEADER+1}" ]; then
		echo "mail.add_x_header=${PHP_CLI_MAIL_ADD_X_HEADER}"
	elif [ -n "${PHP_MAIL_ADD_X_HEADER+1}" ]; then
		echo "mail.add_x_header=${PHP_MAIL_ADD_X_HEADER}"
	fi
	if [ -n "${PHP_CLI_MAIL_FORCE_EXTRA_PARAMETERS+1}" ]; then
		echo "mail.force_extra_parameters=${PHP_CLI_MAIL_FORCE_EXTRA_PARAMETERS}"
	elif [ -n "${PHP_MAIL_FORCE_EXTRA_PARAMETERS+1}" ]; then
		echo "mail.force_extra_parameters=${PHP_MAIL_FORCE_EXTRA_PARAMETERS}"
	fi
	if [ -n "${PHP_CLI_MAIL_LOG+1}" ]; then
		echo "mail.log=${PHP_CLI_MAIL_LOG}"
	elif [ -n "${PHP_MAIL_LOG+1}" ]; then
		echo "mail.log=${PHP_MAIL_LOG}"
	fi
	if [ -n "${PHP_CLI_MAILPARSE_DEF_CHARSET+1}" ]; then
		echo "mailparse.def_charset=${PHP_CLI_MAILPARSE_DEF_CHARSET}"
	elif [ -n "${PHP_MAILPARSE_DEF_CHARSET+1}" ]; then
		echo "mailparse.def_charset=${PHP_MAILPARSE_DEF_CHARSET}"
	fi
	if [ -n "${PHP_CLI_MAX_EXECUTION_TIME+1}" ]; then
		echo "max_execution_time=${PHP_CLI_MAX_EXECUTION_TIME}"
	elif [ -n "${PHP_MAX_EXECUTION_TIME+1}" ]; then
		echo "max_execution_time=${PHP_MAX_EXECUTION_TIME}"
	fi
	if [ -n "${PHP_CLI_MAX_FILE_UPLOADS+1}" ]; then
		echo "max_file_uploads=${PHP_CLI_MAX_FILE_UPLOADS}"
	elif [ -n "${PHP_MAX_FILE_UPLOADS+1}" ]; then
		echo "max_file_uploads=${PHP_MAX_FILE_UPLOADS}"
	fi
	if [ -n "${PHP_CLI_MAX_INPUT_NESTING_LEVEL+1}" ]; then
		echo "max_input_nesting_level=${PHP_CLI_MAX_INPUT_NESTING_LEVEL}"
	elif [ -n "${PHP_MAX_INPUT_NESTING_LEVEL+1}" ]; then
		echo "max_input_nesting_level=${PHP_MAX_INPUT_NESTING_LEVEL}"
	fi
	if [ -n "${PHP_CLI_MAX_INPUT_TIME+1}" ]; then
		echo "max_input_time=${PHP_CLI_MAX_INPUT_TIME}"
	elif [ -n "${PHP_MAX_INPUT_TIME+1}" ]; then
		echo "max_input_time=${PHP_MAX_INPUT_TIME}"
	fi
	if [ -n "${PHP_CLI_MAX_INPUT_VARS+1}" ]; then
		echo "max_input_vars=${PHP_CLI_MAX_INPUT_VARS}"
	elif [ -n "${PHP_MAX_INPUT_VARS+1}" ]; then
		echo "max_input_vars=${PHP_MAX_INPUT_VARS}"
	fi
	if [ -n "${PHP_CLI_MAX_MULTIPART_BODY_PARTS+1}" ]; then
		echo "max_multipart_body_parts=${PHP_CLI_MAX_MULTIPART_BODY_PARTS}"
	elif [ -n "${PHP_MAX_MULTIPART_BODY_PARTS+1}" ]; then
		echo "max_multipart_body_parts=${PHP_MAX_MULTIPART_BODY_PARTS}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_DETECT_ORDER+1}" ]; then
		echo "mbstring.detect_order=${PHP_CLI_MBSTRING_DETECT_ORDER}"
	elif [ -n "${PHP_MBSTRING_DETECT_ORDER+1}" ]; then
		echo "mbstring.detect_order=${PHP_MBSTRING_DETECT_ORDER}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_ENCODING_TRANSLATION+1}" ]; then
		echo "mbstring.encoding_translation=${PHP_CLI_MBSTRING_ENCODING_TRANSLATION}"
	elif [ -n "${PHP_MBSTRING_ENCODING_TRANSLATION+1}" ]; then
		echo "mbstring.encoding_translation=${PHP_MBSTRING_ENCODING_TRANSLATION}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_FUNC_OVERLOAD+1}" ]; then
		echo "mbstring.func_overload=${PHP_CLI_MBSTRING_FUNC_OVERLOAD}"
	elif [ -n "${PHP_MBSTRING_FUNC_OVERLOAD+1}" ]; then
		echo "mbstring.func_overload=${PHP_MBSTRING_FUNC_OVERLOAD}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_HTTP_INPUT+1}" ]; then
		echo "mbstring.http_input=${PHP_CLI_MBSTRING_HTTP_INPUT}"
	elif [ -n "${PHP_MBSTRING_HTTP_INPUT+1}" ]; then
		echo "mbstring.http_input=${PHP_MBSTRING_HTTP_INPUT}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_HTTP_OUTPUT+1}" ]; then
		echo "mbstring.http_output=${PHP_CLI_MBSTRING_HTTP_OUTPUT}"
	elif [ -n "${PHP_MBSTRING_HTTP_OUTPUT+1}" ]; then
		echo "mbstring.http_output=${PHP_MBSTRING_HTTP_OUTPUT}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_HTTP_OUTPUT_CONV_MIMETYPES+1}" ]; then
		echo "mbstring.http_output_conv_mimetypes=${PHP_CLI_MBSTRING_HTTP_OUTPUT_CONV_MIMETYPES}"
	elif [ -n "${PHP_MBSTRING_HTTP_OUTPUT_CONV_MIMETYPES+1}" ]; then
		echo "mbstring.http_output_conv_mimetypes=${PHP_MBSTRING_HTTP_OUTPUT_CONV_MIMETYPES}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_INTERNAL_ENCODING+1}" ]; then
		echo "mbstring.internal_encoding=${PHP_CLI_MBSTRING_INTERNAL_ENCODING}"
	elif [ -n "${PHP_MBSTRING_INTERNAL_ENCODING+1}" ]; then
		echo "mbstring.internal_encoding=${PHP_MBSTRING_INTERNAL_ENCODING}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_LANGUAGE+1}" ]; then
		echo "mbstring.language=${PHP_CLI_MBSTRING_LANGUAGE}"
	elif [ -n "${PHP_MBSTRING_LANGUAGE+1}" ]; then
		echo "mbstring.language=${PHP_MBSTRING_LANGUAGE}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_REGEX_RETRY_LIMIT+1}" ]; then
		echo "mbstring.regex_retry_limit=${PHP_CLI_MBSTRING_REGEX_RETRY_LIMIT}"
	elif [ -n "${PHP_MBSTRING_REGEX_RETRY_LIMIT+1}" ]; then
		echo "mbstring.regex_retry_limit=${PHP_MBSTRING_REGEX_RETRY_LIMIT}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_REGEX_STACK_LIMIT+1}" ]; then
		echo "mbstring.regex_stack_limit=${PHP_CLI_MBSTRING_REGEX_STACK_LIMIT}"
	elif [ -n "${PHP_MBSTRING_REGEX_STACK_LIMIT+1}" ]; then
		echo "mbstring.regex_stack_limit=${PHP_MBSTRING_REGEX_STACK_LIMIT}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_STRICT_DETECTION+1}" ]; then
		echo "mbstring.strict_detection=${PHP_CLI_MBSTRING_STRICT_DETECTION}"
	elif [ -n "${PHP_MBSTRING_STRICT_DETECTION+1}" ]; then
		echo "mbstring.strict_detection=${PHP_MBSTRING_STRICT_DETECTION}"
	fi
	if [ -n "${PHP_CLI_MBSTRING_SUBSTITUTE_CHARACTER+1}" ]; then
		echo "mbstring.substitute_character=${PHP_CLI_MBSTRING_SUBSTITUTE_CHARACTER}"
	elif [ -n "${PHP_MBSTRING_SUBSTITUTE_CHARACTER+1}" ]; then
		echo "mbstring.substitute_character=${PHP_MBSTRING_SUBSTITUTE_CHARACTER}"
	fi
	if [ -n "${PHP_CLI_MCRYPT_ALGORITHMS_DIR+1}" ]; then
		echo "mcrypt.algorithms_dir=${PHP_CLI_MCRYPT_ALGORITHMS_DIR}"
	elif [ -n "${PHP_MCRYPT_ALGORITHMS_DIR+1}" ]; then
		echo "mcrypt.algorithms_dir=${PHP_MCRYPT_ALGORITHMS_DIR}"
	fi
	if [ -n "${PHP_CLI_MCRYPT_MODES_DIR+1}" ]; then
		echo "mcrypt.modes_dir=${PHP_CLI_MCRYPT_MODES_DIR}"
	elif [ -n "${PHP_MCRYPT_MODES_DIR+1}" ]; then
		echo "mcrypt.modes_dir=${PHP_MCRYPT_MODES_DIR}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_ALLOW_FAILOVER+1}" ]; then
		echo "memcache.allow_failover=${PHP_CLI_MEMCACHE_ALLOW_FAILOVER}"
	elif [ -n "${PHP_MEMCACHE_ALLOW_FAILOVER+1}" ]; then
		echo "memcache.allow_failover=${PHP_MEMCACHE_ALLOW_FAILOVER}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_CHUNK_SIZE+1}" ]; then
		echo "memcache.chunk_size=${PHP_CLI_MEMCACHE_CHUNK_SIZE}"
	elif [ -n "${PHP_MEMCACHE_CHUNK_SIZE+1}" ]; then
		echo "memcache.chunk_size=${PHP_MEMCACHE_CHUNK_SIZE}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_COMPRESS_THRESHOLD+1}" ]; then
		echo "memcache.compress_threshold=${PHP_CLI_MEMCACHE_COMPRESS_THRESHOLD}"
	elif [ -n "${PHP_MEMCACHE_COMPRESS_THRESHOLD+1}" ]; then
		echo "memcache.compress_threshold=${PHP_MEMCACHE_COMPRESS_THRESHOLD}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_DEFAULT_PORT+1}" ]; then
		echo "memcache.default_port=${PHP_CLI_MEMCACHE_DEFAULT_PORT}"
	elif [ -n "${PHP_MEMCACHE_DEFAULT_PORT+1}" ]; then
		echo "memcache.default_port=${PHP_MEMCACHE_DEFAULT_PORT}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_HASH_FUNCTION+1}" ]; then
		echo "memcache.hash_function=${PHP_CLI_MEMCACHE_HASH_FUNCTION}"
	elif [ -n "${PHP_MEMCACHE_HASH_FUNCTION+1}" ]; then
		echo "memcache.hash_function=${PHP_MEMCACHE_HASH_FUNCTION}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_HASH_STRATEGY+1}" ]; then
		echo "memcache.hash_strategy=${PHP_CLI_MEMCACHE_HASH_STRATEGY}"
	elif [ -n "${PHP_MEMCACHE_HASH_STRATEGY+1}" ]; then
		echo "memcache.hash_strategy=${PHP_MEMCACHE_HASH_STRATEGY}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_LOCK_TIMEOUT+1}" ]; then
		echo "memcache.lock_timeout=${PHP_CLI_MEMCACHE_LOCK_TIMEOUT}"
	elif [ -n "${PHP_MEMCACHE_LOCK_TIMEOUT+1}" ]; then
		echo "memcache.lock_timeout=${PHP_MEMCACHE_LOCK_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_MAX_FAILOVER_ATTEMPTS+1}" ]; then
		echo "memcache.max_failover_attempts=${PHP_CLI_MEMCACHE_MAX_FAILOVER_ATTEMPTS}"
	elif [ -n "${PHP_MEMCACHE_MAX_FAILOVER_ATTEMPTS+1}" ]; then
		echo "memcache.max_failover_attempts=${PHP_MEMCACHE_MAX_FAILOVER_ATTEMPTS}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_PREFIX_HOST_KEY+1}" ]; then
		echo "memcache.prefix_host_key=${PHP_CLI_MEMCACHE_PREFIX_HOST_KEY}"
	elif [ -n "${PHP_MEMCACHE_PREFIX_HOST_KEY+1}" ]; then
		echo "memcache.prefix_host_key=${PHP_MEMCACHE_PREFIX_HOST_KEY}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_PREFIX_HOST_KEY_REMOVE_SUBDOMAIN+1}" ]; then
		echo "memcache.prefix_host_key_remove_subdomain=${PHP_CLI_MEMCACHE_PREFIX_HOST_KEY_REMOVE_SUBDOMAIN}"
	elif [ -n "${PHP_MEMCACHE_PREFIX_HOST_KEY_REMOVE_SUBDOMAIN+1}" ]; then
		echo "memcache.prefix_host_key_remove_subdomain=${PHP_MEMCACHE_PREFIX_HOST_KEY_REMOVE_SUBDOMAIN}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_PREFIX_HOST_KEY_REMOVE_WWW+1}" ]; then
		echo "memcache.prefix_host_key_remove_www=${PHP_CLI_MEMCACHE_PREFIX_HOST_KEY_REMOVE_WWW}"
	elif [ -n "${PHP_MEMCACHE_PREFIX_HOST_KEY_REMOVE_WWW+1}" ]; then
		echo "memcache.prefix_host_key_remove_www=${PHP_MEMCACHE_PREFIX_HOST_KEY_REMOVE_WWW}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_PREFIX_STATIC_KEY+1}" ]; then
		echo "memcache.prefix_static_key=${PHP_CLI_MEMCACHE_PREFIX_STATIC_KEY}"
	elif [ -n "${PHP_MEMCACHE_PREFIX_STATIC_KEY+1}" ]; then
		echo "memcache.prefix_static_key=${PHP_MEMCACHE_PREFIX_STATIC_KEY}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_PROTOCOL+1}" ]; then
		echo "memcache.protocol=${PHP_CLI_MEMCACHE_PROTOCOL}"
	elif [ -n "${PHP_MEMCACHE_PROTOCOL+1}" ]; then
		echo "memcache.protocol=${PHP_MEMCACHE_PROTOCOL}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_REDUNDANCY+1}" ]; then
		echo "memcache.redundancy=${PHP_CLI_MEMCACHE_REDUNDANCY}"
	elif [ -n "${PHP_MEMCACHE_REDUNDANCY+1}" ]; then
		echo "memcache.redundancy=${PHP_MEMCACHE_REDUNDANCY}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_SESSION_PREFIX_HOST_KEY+1}" ]; then
		echo "memcache.session_prefix_host_key=${PHP_CLI_MEMCACHE_SESSION_PREFIX_HOST_KEY}"
	elif [ -n "${PHP_MEMCACHE_SESSION_PREFIX_HOST_KEY+1}" ]; then
		echo "memcache.session_prefix_host_key=${PHP_MEMCACHE_SESSION_PREFIX_HOST_KEY}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_SESSION_PREFIX_HOST_KEY_REMOVE_SUBDOMAIN+1}" ]; then
		echo "memcache.session_prefix_host_key_remove_subdomain=${PHP_CLI_MEMCACHE_SESSION_PREFIX_HOST_KEY_REMOVE_SUBDOMAIN}"
	elif [ -n "${PHP_MEMCACHE_SESSION_PREFIX_HOST_KEY_REMOVE_SUBDOMAIN+1}" ]; then
		echo "memcache.session_prefix_host_key_remove_subdomain=${PHP_MEMCACHE_SESSION_PREFIX_HOST_KEY_REMOVE_SUBDOMAIN}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_SESSION_PREFIX_HOST_KEY_REMOVE_WWW+1}" ]; then
		echo "memcache.session_prefix_host_key_remove_www=${PHP_CLI_MEMCACHE_SESSION_PREFIX_HOST_KEY_REMOVE_WWW}"
	elif [ -n "${PHP_MEMCACHE_SESSION_PREFIX_HOST_KEY_REMOVE_WWW+1}" ]; then
		echo "memcache.session_prefix_host_key_remove_www=${PHP_MEMCACHE_SESSION_PREFIX_HOST_KEY_REMOVE_WWW}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_SESSION_PREFIX_STATIC_KEY+1}" ]; then
		echo "memcache.session_prefix_static_key=${PHP_CLI_MEMCACHE_SESSION_PREFIX_STATIC_KEY}"
	elif [ -n "${PHP_MEMCACHE_SESSION_PREFIX_STATIC_KEY+1}" ]; then
		echo "memcache.session_prefix_static_key=${PHP_MEMCACHE_SESSION_PREFIX_STATIC_KEY}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_SESSION_REDUNDANCY+1}" ]; then
		echo "memcache.session_redundancy=${PHP_CLI_MEMCACHE_SESSION_REDUNDANCY}"
	elif [ -n "${PHP_MEMCACHE_SESSION_REDUNDANCY+1}" ]; then
		echo "memcache.session_redundancy=${PHP_MEMCACHE_SESSION_REDUNDANCY}"
	fi
	if [ -n "${PHP_CLI_MEMCACHE_SESSION_SAVE_PATH+1}" ]; then
		echo "memcache.session_save_path=${PHP_CLI_MEMCACHE_SESSION_SAVE_PATH}"
	elif [ -n "${PHP_MEMCACHE_SESSION_SAVE_PATH+1}" ]; then
		echo "memcache.session_save_path=${PHP_MEMCACHE_SESSION_SAVE_PATH}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_COMPRESSION_FACTOR+1}" ]; then
		echo "memcached.compression_factor=${PHP_CLI_MEMCACHED_COMPRESSION_FACTOR}"
	elif [ -n "${PHP_MEMCACHED_COMPRESSION_FACTOR+1}" ]; then
		echo "memcached.compression_factor=${PHP_MEMCACHED_COMPRESSION_FACTOR}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_COMPRESSION_THRESHOLD+1}" ]; then
		echo "memcached.compression_threshold=${PHP_CLI_MEMCACHED_COMPRESSION_THRESHOLD}"
	elif [ -n "${PHP_MEMCACHED_COMPRESSION_THRESHOLD+1}" ]; then
		echo "memcached.compression_threshold=${PHP_MEMCACHED_COMPRESSION_THRESHOLD}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_COMPRESSION_TYPE+1}" ]; then
		echo "memcached.compression_type=${PHP_CLI_MEMCACHED_COMPRESSION_TYPE}"
	elif [ -n "${PHP_MEMCACHED_COMPRESSION_TYPE+1}" ]; then
		echo "memcached.compression_type=${PHP_MEMCACHED_COMPRESSION_TYPE}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_DEFAULT_BINARY_PROTOCOL+1}" ]; then
		echo "memcached.default_binary_protocol=${PHP_CLI_MEMCACHED_DEFAULT_BINARY_PROTOCOL}"
	elif [ -n "${PHP_MEMCACHED_DEFAULT_BINARY_PROTOCOL+1}" ]; then
		echo "memcached.default_binary_protocol=${PHP_MEMCACHED_DEFAULT_BINARY_PROTOCOL}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_DEFAULT_CONNECT_TIMEOUT+1}" ]; then
		echo "memcached.default_connect_timeout=${PHP_CLI_MEMCACHED_DEFAULT_CONNECT_TIMEOUT}"
	elif [ -n "${PHP_MEMCACHED_DEFAULT_CONNECT_TIMEOUT+1}" ]; then
		echo "memcached.default_connect_timeout=${PHP_MEMCACHED_DEFAULT_CONNECT_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_DEFAULT_CONSISTENT_HASH+1}" ]; then
		echo "memcached.default_consistent_hash=${PHP_CLI_MEMCACHED_DEFAULT_CONSISTENT_HASH}"
	elif [ -n "${PHP_MEMCACHED_DEFAULT_CONSISTENT_HASH+1}" ]; then
		echo "memcached.default_consistent_hash=${PHP_MEMCACHED_DEFAULT_CONSISTENT_HASH}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SERIALIZER+1}" ]; then
		echo "memcached.serializer=${PHP_CLI_MEMCACHED_SERIALIZER}"
	elif [ -n "${PHP_MEMCACHED_SERIALIZER+1}" ]; then
		echo "memcached.serializer=${PHP_MEMCACHED_SERIALIZER}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_BINARY_PROTOCOL+1}" ]; then
		echo "memcached.sess_binary_protocol=${PHP_CLI_MEMCACHED_SESS_BINARY_PROTOCOL}"
	elif [ -n "${PHP_MEMCACHED_SESS_BINARY_PROTOCOL+1}" ]; then
		echo "memcached.sess_binary_protocol=${PHP_MEMCACHED_SESS_BINARY_PROTOCOL}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_CONNECT_TIMEOUT+1}" ]; then
		echo "memcached.sess_connect_timeout=${PHP_CLI_MEMCACHED_SESS_CONNECT_TIMEOUT}"
	elif [ -n "${PHP_MEMCACHED_SESS_CONNECT_TIMEOUT+1}" ]; then
		echo "memcached.sess_connect_timeout=${PHP_MEMCACHED_SESS_CONNECT_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_CONSISTENT_HASH+1}" ]; then
		echo "memcached.sess_consistent_hash=${PHP_CLI_MEMCACHED_SESS_CONSISTENT_HASH}"
	elif [ -n "${PHP_MEMCACHED_SESS_CONSISTENT_HASH+1}" ]; then
		echo "memcached.sess_consistent_hash=${PHP_MEMCACHED_SESS_CONSISTENT_HASH}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_CONSISTENT_HASH_TYPE+1}" ]; then
		echo "memcached.sess_consistent_hash_type=${PHP_CLI_MEMCACHED_SESS_CONSISTENT_HASH_TYPE}"
	elif [ -n "${PHP_MEMCACHED_SESS_CONSISTENT_HASH_TYPE+1}" ]; then
		echo "memcached.sess_consistent_hash_type=${PHP_MEMCACHED_SESS_CONSISTENT_HASH_TYPE}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_LOCK_EXPIRE+1}" ]; then
		echo "memcached.sess_lock_expire=${PHP_CLI_MEMCACHED_SESS_LOCK_EXPIRE}"
	elif [ -n "${PHP_MEMCACHED_SESS_LOCK_EXPIRE+1}" ]; then
		echo "memcached.sess_lock_expire=${PHP_MEMCACHED_SESS_LOCK_EXPIRE}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_LOCK_MAX_WAIT+1}" ]; then
		echo "memcached.sess_lock_max_wait=${PHP_CLI_MEMCACHED_SESS_LOCK_MAX_WAIT}"
	elif [ -n "${PHP_MEMCACHED_SESS_LOCK_MAX_WAIT+1}" ]; then
		echo "memcached.sess_lock_max_wait=${PHP_MEMCACHED_SESS_LOCK_MAX_WAIT}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_LOCK_RETRIES+1}" ]; then
		echo "memcached.sess_lock_retries=${PHP_CLI_MEMCACHED_SESS_LOCK_RETRIES}"
	elif [ -n "${PHP_MEMCACHED_SESS_LOCK_RETRIES+1}" ]; then
		echo "memcached.sess_lock_retries=${PHP_MEMCACHED_SESS_LOCK_RETRIES}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_LOCK_WAIT+1}" ]; then
		echo "memcached.sess_lock_wait=${PHP_CLI_MEMCACHED_SESS_LOCK_WAIT}"
	elif [ -n "${PHP_MEMCACHED_SESS_LOCK_WAIT+1}" ]; then
		echo "memcached.sess_lock_wait=${PHP_MEMCACHED_SESS_LOCK_WAIT}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_LOCK_WAIT_MAX+1}" ]; then
		echo "memcached.sess_lock_wait_max=${PHP_CLI_MEMCACHED_SESS_LOCK_WAIT_MAX}"
	elif [ -n "${PHP_MEMCACHED_SESS_LOCK_WAIT_MAX+1}" ]; then
		echo "memcached.sess_lock_wait_max=${PHP_MEMCACHED_SESS_LOCK_WAIT_MAX}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_LOCK_WAIT_MIN+1}" ]; then
		echo "memcached.sess_lock_wait_min=${PHP_CLI_MEMCACHED_SESS_LOCK_WAIT_MIN}"
	elif [ -n "${PHP_MEMCACHED_SESS_LOCK_WAIT_MIN+1}" ]; then
		echo "memcached.sess_lock_wait_min=${PHP_MEMCACHED_SESS_LOCK_WAIT_MIN}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_LOCKING+1}" ]; then
		echo "memcached.sess_locking=${PHP_CLI_MEMCACHED_SESS_LOCKING}"
	elif [ -n "${PHP_MEMCACHED_SESS_LOCKING+1}" ]; then
		echo "memcached.sess_locking=${PHP_MEMCACHED_SESS_LOCKING}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_NUMBER_OF_REPLICAS+1}" ]; then
		echo "memcached.sess_number_of_replicas=${PHP_CLI_MEMCACHED_SESS_NUMBER_OF_REPLICAS}"
	elif [ -n "${PHP_MEMCACHED_SESS_NUMBER_OF_REPLICAS+1}" ]; then
		echo "memcached.sess_number_of_replicas=${PHP_MEMCACHED_SESS_NUMBER_OF_REPLICAS}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_PERSISTENT+1}" ]; then
		echo "memcached.sess_persistent=${PHP_CLI_MEMCACHED_SESS_PERSISTENT}"
	elif [ -n "${PHP_MEMCACHED_SESS_PERSISTENT+1}" ]; then
		echo "memcached.sess_persistent=${PHP_MEMCACHED_SESS_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_PREFIX+1}" ]; then
		echo "memcached.sess_prefix=${PHP_CLI_MEMCACHED_SESS_PREFIX}"
	elif [ -n "${PHP_MEMCACHED_SESS_PREFIX+1}" ]; then
		echo "memcached.sess_prefix=${PHP_MEMCACHED_SESS_PREFIX}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_RANDOMIZE_REPLICA_READ+1}" ]; then
		echo "memcached.sess_randomize_replica_read=${PHP_CLI_MEMCACHED_SESS_RANDOMIZE_REPLICA_READ}"
	elif [ -n "${PHP_MEMCACHED_SESS_RANDOMIZE_REPLICA_READ+1}" ]; then
		echo "memcached.sess_randomize_replica_read=${PHP_MEMCACHED_SESS_RANDOMIZE_REPLICA_READ}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_REMOVE_FAILED_SERVERS+1}" ]; then
		echo "memcached.sess_remove_failed_servers=${PHP_CLI_MEMCACHED_SESS_REMOVE_FAILED_SERVERS}"
	elif [ -n "${PHP_MEMCACHED_SESS_REMOVE_FAILED_SERVERS+1}" ]; then
		echo "memcached.sess_remove_failed_servers=${PHP_MEMCACHED_SESS_REMOVE_FAILED_SERVERS}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_SASL_PASSWORD+1}" ]; then
		echo "memcached.sess_sasl_password=${PHP_CLI_MEMCACHED_SESS_SASL_PASSWORD}"
	elif [ -n "${PHP_MEMCACHED_SESS_SASL_PASSWORD+1}" ]; then
		echo "memcached.sess_sasl_password=${PHP_MEMCACHED_SESS_SASL_PASSWORD}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_SASL_USERNAME+1}" ]; then
		echo "memcached.sess_sasl_username=${PHP_CLI_MEMCACHED_SESS_SASL_USERNAME}"
	elif [ -n "${PHP_MEMCACHED_SESS_SASL_USERNAME+1}" ]; then
		echo "memcached.sess_sasl_username=${PHP_MEMCACHED_SESS_SASL_USERNAME}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_SESS_SERVER_FAILURE_LIMIT+1}" ]; then
		echo "memcached.sess_server_failure_limit=${PHP_CLI_MEMCACHED_SESS_SERVER_FAILURE_LIMIT}"
	elif [ -n "${PHP_MEMCACHED_SESS_SERVER_FAILURE_LIMIT+1}" ]; then
		echo "memcached.sess_server_failure_limit=${PHP_MEMCACHED_SESS_SERVER_FAILURE_LIMIT}"
	fi
	if [ -n "${PHP_CLI_MEMCACHED_STORE_RETRY_COUNT+1}" ]; then
		echo "memcached.store_retry_count=${PHP_CLI_MEMCACHED_STORE_RETRY_COUNT}"
	elif [ -n "${PHP_MEMCACHED_STORE_RETRY_COUNT+1}" ]; then
		echo "memcached.store_retry_count=${PHP_MEMCACHED_STORE_RETRY_COUNT}"
	fi
	if [ -n "${PHP_CLI_MEMORY_LIMIT+1}" ]; then
		echo "memory_limit=${PHP_CLI_MEMORY_LIMIT}"
	elif [ -n "${PHP_MEMORY_LIMIT+1}" ]; then
		echo "memory_limit=${PHP_MEMORY_LIMIT}"
	fi
	if [ -n "${PHP_CLI_MONGODB_DEBUG+1}" ]; then
		echo "mongodb.debug=${PHP_CLI_MONGODB_DEBUG}"
	elif [ -n "${PHP_MONGODB_DEBUG+1}" ]; then
		echo "mongodb.debug=${PHP_MONGODB_DEBUG}"
	fi
	if [ -n "${PHP_CLI_MSGPACK_ERROR_DISPLAY+1}" ]; then
		echo "msgpack.error_display=${PHP_CLI_MSGPACK_ERROR_DISPLAY}"
	elif [ -n "${PHP_MSGPACK_ERROR_DISPLAY+1}" ]; then
		echo "msgpack.error_display=${PHP_MSGPACK_ERROR_DISPLAY}"
	fi
	if [ -n "${PHP_CLI_MSGPACK_ILLEGAL_KEY_INSERT+1}" ]; then
		echo "msgpack.illegal_key_insert=${PHP_CLI_MSGPACK_ILLEGAL_KEY_INSERT}"
	elif [ -n "${PHP_MSGPACK_ILLEGAL_KEY_INSERT+1}" ]; then
		echo "msgpack.illegal_key_insert=${PHP_MSGPACK_ILLEGAL_KEY_INSERT}"
	fi
	if [ -n "${PHP_CLI_MSGPACK_PHP_ONLY+1}" ]; then
		echo "msgpack.php_only=${PHP_CLI_MSGPACK_PHP_ONLY}"
	elif [ -n "${PHP_MSGPACK_PHP_ONLY+1}" ]; then
		echo "msgpack.php_only=${PHP_MSGPACK_PHP_ONLY}"
	fi
	if [ -n "${PHP_CLI_MSGPACK_USE_STR8_SERIALIZATION+1}" ]; then
		echo "msgpack.use_str8_serialization=${PHP_CLI_MSGPACK_USE_STR8_SERIALIZATION}"
	elif [ -n "${PHP_MSGPACK_USE_STR8_SERIALIZATION+1}" ]; then
		echo "msgpack.use_str8_serialization=${PHP_MSGPACK_USE_STR8_SERIALIZATION}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_ALLOW_LOCAL_INFILE+1}" ]; then
		echo "mysqli.allow_local_infile=${PHP_CLI_MYSQLI_ALLOW_LOCAL_INFILE}"
	elif [ -n "${PHP_MYSQLI_ALLOW_LOCAL_INFILE+1}" ]; then
		echo "mysqli.allow_local_infile=${PHP_MYSQLI_ALLOW_LOCAL_INFILE}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_ALLOW_PERSISTENT+1}" ]; then
		echo "mysqli.allow_persistent=${PHP_CLI_MYSQLI_ALLOW_PERSISTENT}"
	elif [ -n "${PHP_MYSQLI_ALLOW_PERSISTENT+1}" ]; then
		echo "mysqli.allow_persistent=${PHP_MYSQLI_ALLOW_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_DEFAULT_HOST+1}" ]; then
		echo "mysqli.default_host=${PHP_CLI_MYSQLI_DEFAULT_HOST}"
	elif [ -n "${PHP_MYSQLI_DEFAULT_HOST+1}" ]; then
		echo "mysqli.default_host=${PHP_MYSQLI_DEFAULT_HOST}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_DEFAULT_PORT+1}" ]; then
		echo "mysqli.default_port=${PHP_CLI_MYSQLI_DEFAULT_PORT}"
	elif [ -n "${PHP_MYSQLI_DEFAULT_PORT+1}" ]; then
		echo "mysqli.default_port=${PHP_MYSQLI_DEFAULT_PORT}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_DEFAULT_PW+1}" ]; then
		echo "mysqli.default_pw=${PHP_CLI_MYSQLI_DEFAULT_PW}"
	elif [ -n "${PHP_MYSQLI_DEFAULT_PW+1}" ]; then
		echo "mysqli.default_pw=${PHP_MYSQLI_DEFAULT_PW}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_DEFAULT_SOCKET+1}" ]; then
		echo "mysqli.default_socket=${PHP_CLI_MYSQLI_DEFAULT_SOCKET}"
	elif [ -n "${PHP_MYSQLI_DEFAULT_SOCKET+1}" ]; then
		echo "mysqli.default_socket=${PHP_MYSQLI_DEFAULT_SOCKET}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_DEFAULT_USER+1}" ]; then
		echo "mysqli.default_user=${PHP_CLI_MYSQLI_DEFAULT_USER}"
	elif [ -n "${PHP_MYSQLI_DEFAULT_USER+1}" ]; then
		echo "mysqli.default_user=${PHP_MYSQLI_DEFAULT_USER}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_MAX_LINKS+1}" ]; then
		echo "mysqli.max_links=${PHP_CLI_MYSQLI_MAX_LINKS}"
	elif [ -n "${PHP_MYSQLI_MAX_LINKS+1}" ]; then
		echo "mysqli.max_links=${PHP_MYSQLI_MAX_LINKS}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_MAX_PERSISTENT+1}" ]; then
		echo "mysqli.max_persistent=${PHP_CLI_MYSQLI_MAX_PERSISTENT}"
	elif [ -n "${PHP_MYSQLI_MAX_PERSISTENT+1}" ]; then
		echo "mysqli.max_persistent=${PHP_MYSQLI_MAX_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_RECONNECT+1}" ]; then
		echo "mysqli.reconnect=${PHP_CLI_MYSQLI_RECONNECT}"
	elif [ -n "${PHP_MYSQLI_RECONNECT+1}" ]; then
		echo "mysqli.reconnect=${PHP_MYSQLI_RECONNECT}"
	fi
	if [ -n "${PHP_CLI_MYSQLI_ROLLBACK_ON_CACHED_PLINK+1}" ]; then
		echo "mysqli.rollback_on_cached_plink=${PHP_CLI_MYSQLI_ROLLBACK_ON_CACHED_PLINK}"
	elif [ -n "${PHP_MYSQLI_ROLLBACK_ON_CACHED_PLINK+1}" ]; then
		echo "mysqli.rollback_on_cached_plink=${PHP_MYSQLI_ROLLBACK_ON_CACHED_PLINK}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_COLLECT_MEMORY_STATISTICS+1}" ]; then
		echo "mysqlnd.collect_memory_statistics=${PHP_CLI_MYSQLND_COLLECT_MEMORY_STATISTICS}"
	elif [ -n "${PHP_MYSQLND_COLLECT_MEMORY_STATISTICS+1}" ]; then
		echo "mysqlnd.collect_memory_statistics=${PHP_MYSQLND_COLLECT_MEMORY_STATISTICS}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_COLLECT_STATISTICS+1}" ]; then
		echo "mysqlnd.collect_statistics=${PHP_CLI_MYSQLND_COLLECT_STATISTICS}"
	elif [ -n "${PHP_MYSQLND_COLLECT_STATISTICS+1}" ]; then
		echo "mysqlnd.collect_statistics=${PHP_MYSQLND_COLLECT_STATISTICS}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_DEBUG+1}" ]; then
		echo "mysqlnd.debug=${PHP_CLI_MYSQLND_DEBUG}"
	elif [ -n "${PHP_MYSQLND_DEBUG+1}" ]; then
		echo "mysqlnd.debug=${PHP_MYSQLND_DEBUG}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_FETCH_DATA_COPY+1}" ]; then
		echo "mysqlnd.fetch_data_copy=${PHP_CLI_MYSQLND_FETCH_DATA_COPY}"
	elif [ -n "${PHP_MYSQLND_FETCH_DATA_COPY+1}" ]; then
		echo "mysqlnd.fetch_data_copy=${PHP_MYSQLND_FETCH_DATA_COPY}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_LOG_MASK+1}" ]; then
		echo "mysqlnd.log_mask=${PHP_CLI_MYSQLND_LOG_MASK}"
	elif [ -n "${PHP_MYSQLND_LOG_MASK+1}" ]; then
		echo "mysqlnd.log_mask=${PHP_MYSQLND_LOG_MASK}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_MEMPOOL_DEFAULT_SIZE+1}" ]; then
		echo "mysqlnd.mempool_default_size=${PHP_CLI_MYSQLND_MEMPOOL_DEFAULT_SIZE}"
	elif [ -n "${PHP_MYSQLND_MEMPOOL_DEFAULT_SIZE+1}" ]; then
		echo "mysqlnd.mempool_default_size=${PHP_MYSQLND_MEMPOOL_DEFAULT_SIZE}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_NET_CMD_BUFFER_SIZE+1}" ]; then
		echo "mysqlnd.net_cmd_buffer_size=${PHP_CLI_MYSQLND_NET_CMD_BUFFER_SIZE}"
	elif [ -n "${PHP_MYSQLND_NET_CMD_BUFFER_SIZE+1}" ]; then
		echo "mysqlnd.net_cmd_buffer_size=${PHP_MYSQLND_NET_CMD_BUFFER_SIZE}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_NET_READ_BUFFER_SIZE+1}" ]; then
		echo "mysqlnd.net_read_buffer_size=${PHP_CLI_MYSQLND_NET_READ_BUFFER_SIZE}"
	elif [ -n "${PHP_MYSQLND_NET_READ_BUFFER_SIZE+1}" ]; then
		echo "mysqlnd.net_read_buffer_size=${PHP_MYSQLND_NET_READ_BUFFER_SIZE}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_NET_READ_TIMEOUT+1}" ]; then
		echo "mysqlnd.net_read_timeout=${PHP_CLI_MYSQLND_NET_READ_TIMEOUT}"
	elif [ -n "${PHP_MYSQLND_NET_READ_TIMEOUT+1}" ]; then
		echo "mysqlnd.net_read_timeout=${PHP_MYSQLND_NET_READ_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_SHA256_SERVER_PUBLIC_KEY+1}" ]; then
		echo "mysqlnd.sha256_server_public_key=${PHP_CLI_MYSQLND_SHA256_SERVER_PUBLIC_KEY}"
	elif [ -n "${PHP_MYSQLND_SHA256_SERVER_PUBLIC_KEY+1}" ]; then
		echo "mysqlnd.sha256_server_public_key=${PHP_MYSQLND_SHA256_SERVER_PUBLIC_KEY}"
	fi
	if [ -n "${PHP_CLI_MYSQLND_TRACE_ALLOC+1}" ]; then
		echo "mysqlnd.trace_alloc=${PHP_CLI_MYSQLND_TRACE_ALLOC}"
	elif [ -n "${PHP_MYSQLND_TRACE_ALLOC+1}" ]; then
		echo "mysqlnd.trace_alloc=${PHP_MYSQLND_TRACE_ALLOC}"
	fi
	if [ -n "${PHP_CLI_ODBC_ALLOW_PERSISTENT+1}" ]; then
		echo "odbc.allow_persistent=${PHP_CLI_ODBC_ALLOW_PERSISTENT}"
	elif [ -n "${PHP_ODBC_ALLOW_PERSISTENT+1}" ]; then
		echo "odbc.allow_persistent=${PHP_ODBC_ALLOW_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_ODBC_CHECK_PERSISTENT+1}" ]; then
		echo "odbc.check_persistent=${PHP_CLI_ODBC_CHECK_PERSISTENT}"
	elif [ -n "${PHP_ODBC_CHECK_PERSISTENT+1}" ]; then
		echo "odbc.check_persistent=${PHP_ODBC_CHECK_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_ODBC_DEFAULT_CURSORTYPE+1}" ]; then
		echo "odbc.default_cursortype=${PHP_CLI_ODBC_DEFAULT_CURSORTYPE}"
	elif [ -n "${PHP_ODBC_DEFAULT_CURSORTYPE+1}" ]; then
		echo "odbc.default_cursortype=${PHP_ODBC_DEFAULT_CURSORTYPE}"
	fi
	if [ -n "${PHP_CLI_ODBC_DEFAULT_DB+1}" ]; then
		echo "odbc.default_db=${PHP_CLI_ODBC_DEFAULT_DB}"
	elif [ -n "${PHP_ODBC_DEFAULT_DB+1}" ]; then
		echo "odbc.default_db=${PHP_ODBC_DEFAULT_DB}"
	fi
	if [ -n "${PHP_CLI_ODBC_DEFAULT_PW+1}" ]; then
		echo "odbc.default_pw=${PHP_CLI_ODBC_DEFAULT_PW}"
	elif [ -n "${PHP_ODBC_DEFAULT_PW+1}" ]; then
		echo "odbc.default_pw=${PHP_ODBC_DEFAULT_PW}"
	fi
	if [ -n "${PHP_CLI_ODBC_DEFAULT_USER+1}" ]; then
		echo "odbc.default_user=${PHP_CLI_ODBC_DEFAULT_USER}"
	elif [ -n "${PHP_ODBC_DEFAULT_USER+1}" ]; then
		echo "odbc.default_user=${PHP_ODBC_DEFAULT_USER}"
	fi
	if [ -n "${PHP_CLI_ODBC_DEFAULTBINMODE+1}" ]; then
		echo "odbc.defaultbinmode=${PHP_CLI_ODBC_DEFAULTBINMODE}"
	elif [ -n "${PHP_ODBC_DEFAULTBINMODE+1}" ]; then
		echo "odbc.defaultbinmode=${PHP_ODBC_DEFAULTBINMODE}"
	fi
	if [ -n "${PHP_CLI_ODBC_DEFAULTLRL+1}" ]; then
		echo "odbc.defaultlrl=${PHP_CLI_ODBC_DEFAULTLRL}"
	elif [ -n "${PHP_ODBC_DEFAULTLRL+1}" ]; then
		echo "odbc.defaultlrl=${PHP_ODBC_DEFAULTLRL}"
	fi
	if [ -n "${PHP_CLI_ODBC_MAX_LINKS+1}" ]; then
		echo "odbc.max_links=${PHP_CLI_ODBC_MAX_LINKS}"
	elif [ -n "${PHP_ODBC_MAX_LINKS+1}" ]; then
		echo "odbc.max_links=${PHP_ODBC_MAX_LINKS}"
	fi
	if [ -n "${PHP_CLI_ODBC_MAX_PERSISTENT+1}" ]; then
		echo "odbc.max_persistent=${PHP_CLI_ODBC_MAX_PERSISTENT}"
	elif [ -n "${PHP_ODBC_MAX_PERSISTENT+1}" ]; then
		echo "odbc.max_persistent=${PHP_ODBC_MAX_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_BLACKLIST_FILENAME+1}" ]; then
		echo "opcache.blacklist_filename=${PHP_CLI_OPCACHE_BLACKLIST_FILENAME}"
	elif [ -n "${PHP_OPCACHE_BLACKLIST_FILENAME+1}" ]; then
		echo "opcache.blacklist_filename=${PHP_OPCACHE_BLACKLIST_FILENAME}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_CONSISTENCY_CHECKS+1}" ]; then
		echo "opcache.consistency_checks=${PHP_CLI_OPCACHE_CONSISTENCY_CHECKS}"
	elif [ -n "${PHP_OPCACHE_CONSISTENCY_CHECKS+1}" ]; then
		echo "opcache.consistency_checks=${PHP_OPCACHE_CONSISTENCY_CHECKS}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_DUPS_FIX+1}" ]; then
		echo "opcache.dups_fix=${PHP_CLI_OPCACHE_DUPS_FIX}"
	elif [ -n "${PHP_OPCACHE_DUPS_FIX+1}" ]; then
		echo "opcache.dups_fix=${PHP_OPCACHE_DUPS_FIX}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_ENABLE+1}" ]; then
		echo "opcache.enable=${PHP_CLI_OPCACHE_ENABLE}"
	elif [ -n "${PHP_OPCACHE_ENABLE+1}" ]; then
		echo "opcache.enable=${PHP_OPCACHE_ENABLE}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_ENABLE_CLI+1}" ]; then
		echo "opcache.enable_cli=${PHP_CLI_OPCACHE_ENABLE_CLI}"
	elif [ -n "${PHP_OPCACHE_ENABLE_CLI+1}" ]; then
		echo "opcache.enable_cli=${PHP_OPCACHE_ENABLE_CLI}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_ENABLE_FILE_OVERRIDE+1}" ]; then
		echo "opcache.enable_file_override=${PHP_CLI_OPCACHE_ENABLE_FILE_OVERRIDE}"
	elif [ -n "${PHP_OPCACHE_ENABLE_FILE_OVERRIDE+1}" ]; then
		echo "opcache.enable_file_override=${PHP_OPCACHE_ENABLE_FILE_OVERRIDE}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_ERROR_LOG+1}" ]; then
		echo "opcache.error_log=${PHP_CLI_OPCACHE_ERROR_LOG}"
	elif [ -n "${PHP_OPCACHE_ERROR_LOG+1}" ]; then
		echo "opcache.error_log=${PHP_OPCACHE_ERROR_LOG}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_FILE_CACHE+1}" ]; then
		echo "opcache.file_cache=${PHP_CLI_OPCACHE_FILE_CACHE}"
	elif [ -n "${PHP_OPCACHE_FILE_CACHE+1}" ]; then
		echo "opcache.file_cache=${PHP_OPCACHE_FILE_CACHE}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_FILE_CACHE_CONSISTENCY_CHECKS+1}" ]; then
		echo "opcache.file_cache_consistency_checks=${PHP_CLI_OPCACHE_FILE_CACHE_CONSISTENCY_CHECKS}"
	elif [ -n "${PHP_OPCACHE_FILE_CACHE_CONSISTENCY_CHECKS+1}" ]; then
		echo "opcache.file_cache_consistency_checks=${PHP_OPCACHE_FILE_CACHE_CONSISTENCY_CHECKS}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_FILE_CACHE_ONLY+1}" ]; then
		echo "opcache.file_cache_only=${PHP_CLI_OPCACHE_FILE_CACHE_ONLY}"
	elif [ -n "${PHP_OPCACHE_FILE_CACHE_ONLY+1}" ]; then
		echo "opcache.file_cache_only=${PHP_OPCACHE_FILE_CACHE_ONLY}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_FILE_UPDATE_PROTECTION+1}" ]; then
		echo "opcache.file_update_protection=${PHP_CLI_OPCACHE_FILE_UPDATE_PROTECTION}"
	elif [ -n "${PHP_OPCACHE_FILE_UPDATE_PROTECTION+1}" ]; then
		echo "opcache.file_update_protection=${PHP_OPCACHE_FILE_UPDATE_PROTECTION}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_FORCE_RESTART_TIMEOUT+1}" ]; then
		echo "opcache.force_restart_timeout=${PHP_CLI_OPCACHE_FORCE_RESTART_TIMEOUT}"
	elif [ -n "${PHP_OPCACHE_FORCE_RESTART_TIMEOUT+1}" ]; then
		echo "opcache.force_restart_timeout=${PHP_OPCACHE_FORCE_RESTART_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_HUGE_CODE_PAGES+1}" ]; then
		echo "opcache.huge_code_pages=${PHP_CLI_OPCACHE_HUGE_CODE_PAGES}"
	elif [ -n "${PHP_OPCACHE_HUGE_CODE_PAGES+1}" ]; then
		echo "opcache.huge_code_pages=${PHP_OPCACHE_HUGE_CODE_PAGES}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_INTERNED_STRINGS_BUFFER+1}" ]; then
		echo "opcache.interned_strings_buffer=${PHP_CLI_OPCACHE_INTERNED_STRINGS_BUFFER}"
	elif [ -n "${PHP_OPCACHE_INTERNED_STRINGS_BUFFER+1}" ]; then
		echo "opcache.interned_strings_buffer=${PHP_OPCACHE_INTERNED_STRINGS_BUFFER}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_LOCKFILE_PATH+1}" ]; then
		echo "opcache.lockfile_path=${PHP_CLI_OPCACHE_LOCKFILE_PATH}"
	elif [ -n "${PHP_OPCACHE_LOCKFILE_PATH+1}" ]; then
		echo "opcache.lockfile_path=${PHP_OPCACHE_LOCKFILE_PATH}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_LOG_VERBOSITY_LEVEL+1}" ]; then
		echo "opcache.log_verbosity_level=${PHP_CLI_OPCACHE_LOG_VERBOSITY_LEVEL}"
	elif [ -n "${PHP_OPCACHE_LOG_VERBOSITY_LEVEL+1}" ]; then
		echo "opcache.log_verbosity_level=${PHP_OPCACHE_LOG_VERBOSITY_LEVEL}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_MAX_ACCELERATED_FILES+1}" ]; then
		echo "opcache.max_accelerated_files=${PHP_CLI_OPCACHE_MAX_ACCELERATED_FILES}"
	elif [ -n "${PHP_OPCACHE_MAX_ACCELERATED_FILES+1}" ]; then
		echo "opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_MAX_FILE_SIZE+1}" ]; then
		echo "opcache.max_file_size=${PHP_CLI_OPCACHE_MAX_FILE_SIZE}"
	elif [ -n "${PHP_OPCACHE_MAX_FILE_SIZE+1}" ]; then
		echo "opcache.max_file_size=${PHP_OPCACHE_MAX_FILE_SIZE}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_MAX_WASTED_PERCENTAGE+1}" ]; then
		echo "opcache.max_wasted_percentage=${PHP_CLI_OPCACHE_MAX_WASTED_PERCENTAGE}"
	elif [ -n "${PHP_OPCACHE_MAX_WASTED_PERCENTAGE+1}" ]; then
		echo "opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_MEMORY_CONSUMPTION+1}" ]; then
		echo "opcache.memory_consumption=${PHP_CLI_OPCACHE_MEMORY_CONSUMPTION}"
	elif [ -n "${PHP_OPCACHE_MEMORY_CONSUMPTION+1}" ]; then
		echo "opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_OPT_DEBUG_LEVEL+1}" ]; then
		echo "opcache.opt_debug_level=${PHP_CLI_OPCACHE_OPT_DEBUG_LEVEL}"
	elif [ -n "${PHP_OPCACHE_OPT_DEBUG_LEVEL+1}" ]; then
		echo "opcache.opt_debug_level=${PHP_OPCACHE_OPT_DEBUG_LEVEL}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_OPTIMIZATION_LEVEL+1}" ]; then
		echo "opcache.optimization_level=${PHP_CLI_OPCACHE_OPTIMIZATION_LEVEL}"
	elif [ -n "${PHP_OPCACHE_OPTIMIZATION_LEVEL+1}" ]; then
		echo "opcache.optimization_level=${PHP_OPCACHE_OPTIMIZATION_LEVEL}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_PREFERRED_MEMORY_MODEL+1}" ]; then
		echo "opcache.preferred_memory_model=${PHP_CLI_OPCACHE_PREFERRED_MEMORY_MODEL}"
	elif [ -n "${PHP_OPCACHE_PREFERRED_MEMORY_MODEL+1}" ]; then
		echo "opcache.preferred_memory_model=${PHP_OPCACHE_PREFERRED_MEMORY_MODEL}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_PRELOAD+1}" ]; then
		echo "opcache.preload=${PHP_CLI_OPCACHE_PRELOAD}"
	elif [ -n "${PHP_OPCACHE_PRELOAD+1}" ]; then
		echo "opcache.preload=${PHP_OPCACHE_PRELOAD}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_PRELOAD_USER+1}" ]; then
		echo "opcache.preload_user=${PHP_CLI_OPCACHE_PRELOAD_USER}"
	elif [ -n "${PHP_OPCACHE_PRELOAD_USER+1}" ]; then
		echo "opcache.preload_user=${PHP_OPCACHE_PRELOAD_USER}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_PROTECT_MEMORY+1}" ]; then
		echo "opcache.protect_memory=${PHP_CLI_OPCACHE_PROTECT_MEMORY}"
	elif [ -n "${PHP_OPCACHE_PROTECT_MEMORY+1}" ]; then
		echo "opcache.protect_memory=${PHP_OPCACHE_PROTECT_MEMORY}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_RESTRICT_API+1}" ]; then
		echo "opcache.restrict_api=${PHP_CLI_OPCACHE_RESTRICT_API}"
	elif [ -n "${PHP_OPCACHE_RESTRICT_API+1}" ]; then
		echo "opcache.restrict_api=${PHP_OPCACHE_RESTRICT_API}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_REVALIDATE_FREQ+1}" ]; then
		echo "opcache.revalidate_freq=${PHP_CLI_OPCACHE_REVALIDATE_FREQ}"
	elif [ -n "${PHP_OPCACHE_REVALIDATE_FREQ+1}" ]; then
		echo "opcache.revalidate_freq=${PHP_OPCACHE_REVALIDATE_FREQ}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_REVALIDATE_PATH+1}" ]; then
		echo "opcache.revalidate_path=${PHP_CLI_OPCACHE_REVALIDATE_PATH}"
	elif [ -n "${PHP_OPCACHE_REVALIDATE_PATH+1}" ]; then
		echo "opcache.revalidate_path=${PHP_OPCACHE_REVALIDATE_PATH}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_SAVE_COMMENTS+1}" ]; then
		echo "opcache.save_comments=${PHP_CLI_OPCACHE_SAVE_COMMENTS}"
	elif [ -n "${PHP_OPCACHE_SAVE_COMMENTS+1}" ]; then
		echo "opcache.save_comments=${PHP_OPCACHE_SAVE_COMMENTS}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_USE_CWD+1}" ]; then
		echo "opcache.use_cwd=${PHP_CLI_OPCACHE_USE_CWD}"
	elif [ -n "${PHP_OPCACHE_USE_CWD+1}" ]; then
		echo "opcache.use_cwd=${PHP_OPCACHE_USE_CWD}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_VALIDATE_PERMISSION+1}" ]; then
		echo "opcache.validate_permission=${PHP_CLI_OPCACHE_VALIDATE_PERMISSION}"
	elif [ -n "${PHP_OPCACHE_VALIDATE_PERMISSION+1}" ]; then
		echo "opcache.validate_permission=${PHP_OPCACHE_VALIDATE_PERMISSION}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_VALIDATE_ROOT+1}" ]; then
		echo "opcache.validate_root=${PHP_CLI_OPCACHE_VALIDATE_ROOT}"
	elif [ -n "${PHP_OPCACHE_VALIDATE_ROOT+1}" ]; then
		echo "opcache.validate_root=${PHP_OPCACHE_VALIDATE_ROOT}"
	fi
	if [ -n "${PHP_CLI_OPCACHE_VALIDATE_TIMESTAMPS+1}" ]; then
		echo "opcache.validate_timestamps=${PHP_CLI_OPCACHE_VALIDATE_TIMESTAMPS}"
	elif [ -n "${PHP_OPCACHE_VALIDATE_TIMESTAMPS+1}" ]; then
		echo "opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}"
	fi
	if [ -n "${PHP_CLI_OPEN_BASEDIR+1}" ]; then
		echo "open_basedir=${PHP_CLI_OPEN_BASEDIR}"
	elif [ -n "${PHP_OPEN_BASEDIR+1}" ]; then
		echo "open_basedir=${PHP_OPEN_BASEDIR}"
	fi
	if [ -n "${PHP_CLI_OPENSSL_CAFILE+1}" ]; then
		echo "openssl.cafile=${PHP_CLI_OPENSSL_CAFILE}"
	elif [ -n "${PHP_OPENSSL_CAFILE+1}" ]; then
		echo "openssl.cafile=${PHP_OPENSSL_CAFILE}"
	fi
	if [ -n "${PHP_CLI_OPENSSL_CAPATH+1}" ]; then
		echo "openssl.capath=${PHP_CLI_OPENSSL_CAPATH}"
	elif [ -n "${PHP_OPENSSL_CAPATH+1}" ]; then
		echo "openssl.capath=${PHP_OPENSSL_CAPATH}"
	fi
	if [ -n "${PHP_CLI_OUTPUT_BUFFERING+1}" ]; then
		echo "output_buffering=${PHP_CLI_OUTPUT_BUFFERING}"
	elif [ -n "${PHP_OUTPUT_BUFFERING+1}" ]; then
		echo "output_buffering=${PHP_OUTPUT_BUFFERING}"
	fi
	if [ -n "${PHP_CLI_OUTPUT_ENCODING+1}" ]; then
		echo "output_encoding=${PHP_CLI_OUTPUT_ENCODING}"
	elif [ -n "${PHP_OUTPUT_ENCODING+1}" ]; then
		echo "output_encoding=${PHP_OUTPUT_ENCODING}"
	fi
	if [ -n "${PHP_CLI_OUTPUT_HANDLER+1}" ]; then
		echo "output_handler=${PHP_CLI_OUTPUT_HANDLER}"
	elif [ -n "${PHP_OUTPUT_HANDLER+1}" ]; then
		echo "output_handler=${PHP_OUTPUT_HANDLER}"
	fi
	if [ -n "${PHP_CLI_PCOV_DIRECTORY+1}" ]; then
		echo "pcov.directory=${PHP_CLI_PCOV_DIRECTORY}"
	elif [ -n "${PHP_PCOV_DIRECTORY+1}" ]; then
		echo "pcov.directory=${PHP_PCOV_DIRECTORY}"
	fi
	if [ -n "${PHP_CLI_PCOV_ENABLED+1}" ]; then
		echo "pcov.enabled=${PHP_CLI_PCOV_ENABLED}"
	elif [ -n "${PHP_PCOV_ENABLED+1}" ]; then
		echo "pcov.enabled=${PHP_PCOV_ENABLED}"
	fi
	if [ -n "${PHP_CLI_PCOV_EXCLUDE+1}" ]; then
		echo "pcov.exclude=${PHP_CLI_PCOV_EXCLUDE}"
	elif [ -n "${PHP_PCOV_EXCLUDE+1}" ]; then
		echo "pcov.exclude=${PHP_PCOV_EXCLUDE}"
	fi
	if [ -n "${PHP_CLI_PCOV_INITIAL_FILES+1}" ]; then
		echo "pcov.initial.files=${PHP_CLI_PCOV_INITIAL_FILES}"
	elif [ -n "${PHP_PCOV_INITIAL_FILES+1}" ]; then
		echo "pcov.initial.files=${PHP_PCOV_INITIAL_FILES}"
	fi
	if [ -n "${PHP_CLI_PCOV_INITIAL_MEMORY+1}" ]; then
		echo "pcov.initial.memory=${PHP_CLI_PCOV_INITIAL_MEMORY}"
	elif [ -n "${PHP_PCOV_INITIAL_MEMORY+1}" ]; then
		echo "pcov.initial.memory=${PHP_PCOV_INITIAL_MEMORY}"
	fi
	if [ -n "${PHP_CLI_PCRE_BACKTRACK_LIMIT+1}" ]; then
		echo "pcre.backtrack_limit=${PHP_CLI_PCRE_BACKTRACK_LIMIT}"
	elif [ -n "${PHP_PCRE_BACKTRACK_LIMIT+1}" ]; then
		echo "pcre.backtrack_limit=${PHP_PCRE_BACKTRACK_LIMIT}"
	fi
	if [ -n "${PHP_CLI_PCRE_JIT+1}" ]; then
		echo "pcre.jit=${PHP_CLI_PCRE_JIT}"
	elif [ -n "${PHP_PCRE_JIT+1}" ]; then
		echo "pcre.jit=${PHP_PCRE_JIT}"
	fi
	if [ -n "${PHP_CLI_PCRE_RECURSION_LIMIT+1}" ]; then
		echo "pcre.recursion_limit=${PHP_CLI_PCRE_RECURSION_LIMIT}"
	elif [ -n "${PHP_PCRE_RECURSION_LIMIT+1}" ]; then
		echo "pcre.recursion_limit=${PHP_PCRE_RECURSION_LIMIT}"
	fi
	if [ -n "${PHP_CLI_PDO_MYSQL_DEFAULT_SOCKET+1}" ]; then
		echo "pdo_mysql.default_socket=${PHP_CLI_PDO_MYSQL_DEFAULT_SOCKET}"
	elif [ -n "${PHP_PDO_MYSQL_DEFAULT_SOCKET+1}" ]; then
		echo "pdo_mysql.default_socket=${PHP_PDO_MYSQL_DEFAULT_SOCKET}"
	fi
	if [ -n "${PHP_CLI_PGSQL_ALLOW_PERSISTENT+1}" ]; then
		echo "pgsql.allow_persistent=${PHP_CLI_PGSQL_ALLOW_PERSISTENT}"
	elif [ -n "${PHP_PGSQL_ALLOW_PERSISTENT+1}" ]; then
		echo "pgsql.allow_persistent=${PHP_PGSQL_ALLOW_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_PGSQL_AUTO_RESET_PERSISTENT+1}" ]; then
		echo "pgsql.auto_reset_persistent=${PHP_CLI_PGSQL_AUTO_RESET_PERSISTENT}"
	elif [ -n "${PHP_PGSQL_AUTO_RESET_PERSISTENT+1}" ]; then
		echo "pgsql.auto_reset_persistent=${PHP_PGSQL_AUTO_RESET_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_PGSQL_IGNORE_NOTICE+1}" ]; then
		echo "pgsql.ignore_notice=${PHP_CLI_PGSQL_IGNORE_NOTICE}"
	elif [ -n "${PHP_PGSQL_IGNORE_NOTICE+1}" ]; then
		echo "pgsql.ignore_notice=${PHP_PGSQL_IGNORE_NOTICE}"
	fi
	if [ -n "${PHP_CLI_PGSQL_LOG_NOTICE+1}" ]; then
		echo "pgsql.log_notice=${PHP_CLI_PGSQL_LOG_NOTICE}"
	elif [ -n "${PHP_PGSQL_LOG_NOTICE+1}" ]; then
		echo "pgsql.log_notice=${PHP_PGSQL_LOG_NOTICE}"
	fi
	if [ -n "${PHP_CLI_PGSQL_MAX_LINKS+1}" ]; then
		echo "pgsql.max_links=${PHP_CLI_PGSQL_MAX_LINKS}"
	elif [ -n "${PHP_PGSQL_MAX_LINKS+1}" ]; then
		echo "pgsql.max_links=${PHP_PGSQL_MAX_LINKS}"
	fi
	if [ -n "${PHP_CLI_PGSQL_MAX_PERSISTENT+1}" ]; then
		echo "pgsql.max_persistent=${PHP_CLI_PGSQL_MAX_PERSISTENT}"
	elif [ -n "${PHP_PGSQL_MAX_PERSISTENT+1}" ]; then
		echo "pgsql.max_persistent=${PHP_PGSQL_MAX_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_PHALCON_DB_ESCAPE_IDENTIFIERS+1}" ]; then
		echo "phalcon.db.escape_identifiers=${PHP_CLI_PHALCON_DB_ESCAPE_IDENTIFIERS}"
	elif [ -n "${PHP_PHALCON_DB_ESCAPE_IDENTIFIERS+1}" ]; then
		echo "phalcon.db.escape_identifiers=${PHP_PHALCON_DB_ESCAPE_IDENTIFIERS}"
	fi
	if [ -n "${PHP_CLI_PHALCON_DB_FORCE_CASTING+1}" ]; then
		echo "phalcon.db.force_casting=${PHP_CLI_PHALCON_DB_FORCE_CASTING}"
	elif [ -n "${PHP_PHALCON_DB_FORCE_CASTING+1}" ]; then
		echo "phalcon.db.force_casting=${PHP_PHALCON_DB_FORCE_CASTING}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_CASE_INSENSITIVE_COLUMN_MAP+1}" ]; then
		echo "phalcon.orm.case_insensitive_column_map=${PHP_CLI_PHALCON_ORM_CASE_INSENSITIVE_COLUMN_MAP}"
	elif [ -n "${PHP_PHALCON_ORM_CASE_INSENSITIVE_COLUMN_MAP+1}" ]; then
		echo "phalcon.orm.case_insensitive_column_map=${PHP_PHALCON_ORM_CASE_INSENSITIVE_COLUMN_MAP}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_CAST_LAST_INSERT_ID_TO_INT+1}" ]; then
		echo "phalcon.orm.cast_last_insert_id_to_int=${PHP_CLI_PHALCON_ORM_CAST_LAST_INSERT_ID_TO_INT}"
	elif [ -n "${PHP_PHALCON_ORM_CAST_LAST_INSERT_ID_TO_INT+1}" ]; then
		echo "phalcon.orm.cast_last_insert_id_to_int=${PHP_PHALCON_ORM_CAST_LAST_INSERT_ID_TO_INT}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_CAST_ON_HYDRATE+1}" ]; then
		echo "phalcon.orm.cast_on_hydrate=${PHP_CLI_PHALCON_ORM_CAST_ON_HYDRATE}"
	elif [ -n "${PHP_PHALCON_ORM_CAST_ON_HYDRATE+1}" ]; then
		echo "phalcon.orm.cast_on_hydrate=${PHP_PHALCON_ORM_CAST_ON_HYDRATE}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_COLUMN_RENAMING+1}" ]; then
		echo "phalcon.orm.column_renaming=${PHP_CLI_PHALCON_ORM_COLUMN_RENAMING}"
	elif [ -n "${PHP_PHALCON_ORM_COLUMN_RENAMING+1}" ]; then
		echo "phalcon.orm.column_renaming=${PHP_PHALCON_ORM_COLUMN_RENAMING}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_DISABLE_ASSIGN_SETTERS+1}" ]; then
		echo "phalcon.orm.disable_assign_setters=${PHP_CLI_PHALCON_ORM_DISABLE_ASSIGN_SETTERS}"
	elif [ -n "${PHP_PHALCON_ORM_DISABLE_ASSIGN_SETTERS+1}" ]; then
		echo "phalcon.orm.disable_assign_setters=${PHP_PHALCON_ORM_DISABLE_ASSIGN_SETTERS}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_ENABLE_IMPLICIT_JOINS+1}" ]; then
		echo "phalcon.orm.enable_implicit_joins=${PHP_CLI_PHALCON_ORM_ENABLE_IMPLICIT_JOINS}"
	elif [ -n "${PHP_PHALCON_ORM_ENABLE_IMPLICIT_JOINS+1}" ]; then
		echo "phalcon.orm.enable_implicit_joins=${PHP_PHALCON_ORM_ENABLE_IMPLICIT_JOINS}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_ENABLE_LITERALS+1}" ]; then
		echo "phalcon.orm.enable_literals=${PHP_CLI_PHALCON_ORM_ENABLE_LITERALS}"
	elif [ -n "${PHP_PHALCON_ORM_ENABLE_LITERALS+1}" ]; then
		echo "phalcon.orm.enable_literals=${PHP_PHALCON_ORM_ENABLE_LITERALS}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_EVENTS+1}" ]; then
		echo "phalcon.orm.events=${PHP_CLI_PHALCON_ORM_EVENTS}"
	elif [ -n "${PHP_PHALCON_ORM_EVENTS+1}" ]; then
		echo "phalcon.orm.events=${PHP_PHALCON_ORM_EVENTS}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_EXCEPTION_ON_FAILED_METADATA_SAVE+1}" ]; then
		echo "phalcon.orm.exception_on_failed_metadata_save=${PHP_CLI_PHALCON_ORM_EXCEPTION_ON_FAILED_METADATA_SAVE}"
	elif [ -n "${PHP_PHALCON_ORM_EXCEPTION_ON_FAILED_METADATA_SAVE+1}" ]; then
		echo "phalcon.orm.exception_on_failed_metadata_save=${PHP_PHALCON_ORM_EXCEPTION_ON_FAILED_METADATA_SAVE}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_EXCEPTION_ON_FAILED_SAVE+1}" ]; then
		echo "phalcon.orm.exception_on_failed_save=${PHP_CLI_PHALCON_ORM_EXCEPTION_ON_FAILED_SAVE}"
	elif [ -n "${PHP_PHALCON_ORM_EXCEPTION_ON_FAILED_SAVE+1}" ]; then
		echo "phalcon.orm.exception_on_failed_save=${PHP_PHALCON_ORM_EXCEPTION_ON_FAILED_SAVE}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_IGNORE_UNKNOWN_COLUMNS+1}" ]; then
		echo "phalcon.orm.ignore_unknown_columns=${PHP_CLI_PHALCON_ORM_IGNORE_UNKNOWN_COLUMNS}"
	elif [ -n "${PHP_PHALCON_ORM_IGNORE_UNKNOWN_COLUMNS+1}" ]; then
		echo "phalcon.orm.ignore_unknown_columns=${PHP_PHALCON_ORM_IGNORE_UNKNOWN_COLUMNS}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_LATE_STATE_BINDING+1}" ]; then
		echo "phalcon.orm.late_state_binding=${PHP_CLI_PHALCON_ORM_LATE_STATE_BINDING}"
	elif [ -n "${PHP_PHALCON_ORM_LATE_STATE_BINDING+1}" ]; then
		echo "phalcon.orm.late_state_binding=${PHP_PHALCON_ORM_LATE_STATE_BINDING}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_NOT_NULL_VALIDATIONS+1}" ]; then
		echo "phalcon.orm.not_null_validations=${PHP_CLI_PHALCON_ORM_NOT_NULL_VALIDATIONS}"
	elif [ -n "${PHP_PHALCON_ORM_NOT_NULL_VALIDATIONS+1}" ]; then
		echo "phalcon.orm.not_null_validations=${PHP_PHALCON_ORM_NOT_NULL_VALIDATIONS}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_RESULTSET_PREFETCH_RECORDS+1}" ]; then
		echo "phalcon.orm.resultset_prefetch_records=${PHP_CLI_PHALCON_ORM_RESULTSET_PREFETCH_RECORDS}"
	elif [ -n "${PHP_PHALCON_ORM_RESULTSET_PREFETCH_RECORDS+1}" ]; then
		echo "phalcon.orm.resultset_prefetch_records=${PHP_PHALCON_ORM_RESULTSET_PREFETCH_RECORDS}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_UPDATE_SNAPSHOT_ON_SAVE+1}" ]; then
		echo "phalcon.orm.update_snapshot_on_save=${PHP_CLI_PHALCON_ORM_UPDATE_SNAPSHOT_ON_SAVE}"
	elif [ -n "${PHP_PHALCON_ORM_UPDATE_SNAPSHOT_ON_SAVE+1}" ]; then
		echo "phalcon.orm.update_snapshot_on_save=${PHP_PHALCON_ORM_UPDATE_SNAPSHOT_ON_SAVE}"
	fi
	if [ -n "${PHP_CLI_PHALCON_ORM_VIRTUAL_FOREIGN_KEYS+1}" ]; then
		echo "phalcon.orm.virtual_foreign_keys=${PHP_CLI_PHALCON_ORM_VIRTUAL_FOREIGN_KEYS}"
	elif [ -n "${PHP_PHALCON_ORM_VIRTUAL_FOREIGN_KEYS+1}" ]; then
		echo "phalcon.orm.virtual_foreign_keys=${PHP_PHALCON_ORM_VIRTUAL_FOREIGN_KEYS}"
	fi
	if [ -n "${PHP_CLI_PHALCON_WARNING_ENABLE+1}" ]; then
		echo "phalcon.warning.enable=${PHP_CLI_PHALCON_WARNING_ENABLE}"
	elif [ -n "${PHP_PHALCON_WARNING_ENABLE+1}" ]; then
		echo "phalcon.warning.enable=${PHP_PHALCON_WARNING_ENABLE}"
	fi
	if [ -n "${PHP_CLI_PHAR_CACHE_LIST+1}" ]; then
		echo "phar.cache_list=${PHP_CLI_PHAR_CACHE_LIST}"
	elif [ -n "${PHP_PHAR_CACHE_LIST+1}" ]; then
		echo "phar.cache_list=${PHP_PHAR_CACHE_LIST}"
	fi
	if [ -n "${PHP_CLI_PHAR_READONLY+1}" ]; then
		echo "phar.readonly=${PHP_CLI_PHAR_READONLY}"
	elif [ -n "${PHP_PHAR_READONLY+1}" ]; then
		echo "phar.readonly=${PHP_PHAR_READONLY}"
	fi
	if [ -n "${PHP_CLI_PHAR_REQUIRE_HASH+1}" ]; then
		echo "phar.require_hash=${PHP_CLI_PHAR_REQUIRE_HASH}"
	elif [ -n "${PHP_PHAR_REQUIRE_HASH+1}" ]; then
		echo "phar.require_hash=${PHP_PHAR_REQUIRE_HASH}"
	fi
	if [ -n "${PHP_CLI_PINBA_AUTO_FLUSH+1}" ]; then
		echo "pinba.auto_flush=${PHP_CLI_PINBA_AUTO_FLUSH}"
	elif [ -n "${PHP_PINBA_AUTO_FLUSH+1}" ]; then
		echo "pinba.auto_flush=${PHP_PINBA_AUTO_FLUSH}"
	fi
	if [ -n "${PHP_CLI_PINBA_ENABLED+1}" ]; then
		echo "pinba.enabled=${PHP_CLI_PINBA_ENABLED}"
	elif [ -n "${PHP_PINBA_ENABLED+1}" ]; then
		echo "pinba.enabled=${PHP_PINBA_ENABLED}"
	fi
	if [ -n "${PHP_CLI_PINBA_RESOLVE_INTERVAL+1}" ]; then
		echo "pinba.resolve_interval=${PHP_CLI_PINBA_RESOLVE_INTERVAL}"
	elif [ -n "${PHP_PINBA_RESOLVE_INTERVAL+1}" ]; then
		echo "pinba.resolve_interval=${PHP_PINBA_RESOLVE_INTERVAL}"
	fi
	if [ -n "${PHP_CLI_PINBA_SERVER+1}" ]; then
		echo "pinba.server=${PHP_CLI_PINBA_SERVER}"
	elif [ -n "${PHP_PINBA_SERVER+1}" ]; then
		echo "pinba.server=${PHP_PINBA_SERVER}"
	fi
	if [ -n "${PHP_CLI_POST_MAX_SIZE+1}" ]; then
		echo "post_max_size=${PHP_CLI_POST_MAX_SIZE}"
	elif [ -n "${PHP_POST_MAX_SIZE+1}" ]; then
		echo "post_max_size=${PHP_POST_MAX_SIZE}"
	fi
	if [ -n "${PHP_CLI_PRECISION+1}" ]; then
		echo "precision=${PHP_CLI_PRECISION}"
	elif [ -n "${PHP_PRECISION+1}" ]; then
		echo "precision=${PHP_PRECISION}"
	fi
	if [ -n "${PHP_CLI_PROTOBUF_KEEP_DESCRIPTOR_POOL_AFTER_REQUEST+1}" ]; then
		echo "protobuf.keep_descriptor_pool_after_request=${PHP_CLI_PROTOBUF_KEEP_DESCRIPTOR_POOL_AFTER_REQUEST}"
	elif [ -n "${PHP_PROTOBUF_KEEP_DESCRIPTOR_POOL_AFTER_REQUEST+1}" ]; then
		echo "protobuf.keep_descriptor_pool_after_request=${PHP_PROTOBUF_KEEP_DESCRIPTOR_POOL_AFTER_REQUEST}"
	fi
	if [ -n "${PHP_CLI_RAPHF_PERSISTENT_HANDLE_LIMIT+1}" ]; then
		echo "raphf.persistent_handle.limit=${PHP_CLI_RAPHF_PERSISTENT_HANDLE_LIMIT}"
	elif [ -n "${PHP_RAPHF_PERSISTENT_HANDLE_LIMIT+1}" ]; then
		echo "raphf.persistent_handle.limit=${PHP_RAPHF_PERSISTENT_HANDLE_LIMIT}"
	fi
	if [ -n "${PHP_CLI_REALPATH_CACHE_SIZE+1}" ]; then
		echo "realpath_cache_size=${PHP_CLI_REALPATH_CACHE_SIZE}"
	elif [ -n "${PHP_REALPATH_CACHE_SIZE+1}" ]; then
		echo "realpath_cache_size=${PHP_REALPATH_CACHE_SIZE}"
	fi
	if [ -n "${PHP_CLI_REALPATH_CACHE_TTL+1}" ]; then
		echo "realpath_cache_ttl=${PHP_CLI_REALPATH_CACHE_TTL}"
	elif [ -n "${PHP_REALPATH_CACHE_TTL+1}" ]; then
		echo "realpath_cache_ttl=${PHP_REALPATH_CACHE_TTL}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_ALGORITHM+1}" ]; then
		echo "redis.arrays.algorithm=${PHP_CLI_REDIS_ARRAYS_ALGORITHM}"
	elif [ -n "${PHP_REDIS_ARRAYS_ALGORITHM+1}" ]; then
		echo "redis.arrays.algorithm=${PHP_REDIS_ARRAYS_ALGORITHM}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_AUTH+1}" ]; then
		echo "redis.arrays.auth=${PHP_CLI_REDIS_ARRAYS_AUTH}"
	elif [ -n "${PHP_REDIS_ARRAYS_AUTH+1}" ]; then
		echo "redis.arrays.auth=${PHP_REDIS_ARRAYS_AUTH}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_AUTOREHASH+1}" ]; then
		echo "redis.arrays.autorehash=${PHP_CLI_REDIS_ARRAYS_AUTOREHASH}"
	elif [ -n "${PHP_REDIS_ARRAYS_AUTOREHASH+1}" ]; then
		echo "redis.arrays.autorehash=${PHP_REDIS_ARRAYS_AUTOREHASH}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_CONNECTTIMEOUT+1}" ]; then
		echo "redis.arrays.connecttimeout=${PHP_CLI_REDIS_ARRAYS_CONNECTTIMEOUT}"
	elif [ -n "${PHP_REDIS_ARRAYS_CONNECTTIMEOUT+1}" ]; then
		echo "redis.arrays.connecttimeout=${PHP_REDIS_ARRAYS_CONNECTTIMEOUT}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_CONSISTENT+1}" ]; then
		echo "redis.arrays.consistent=${PHP_CLI_REDIS_ARRAYS_CONSISTENT}"
	elif [ -n "${PHP_REDIS_ARRAYS_CONSISTENT+1}" ]; then
		echo "redis.arrays.consistent=${PHP_REDIS_ARRAYS_CONSISTENT}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_DISTRIBUTOR+1}" ]; then
		echo "redis.arrays.distributor=${PHP_CLI_REDIS_ARRAYS_DISTRIBUTOR}"
	elif [ -n "${PHP_REDIS_ARRAYS_DISTRIBUTOR+1}" ]; then
		echo "redis.arrays.distributor=${PHP_REDIS_ARRAYS_DISTRIBUTOR}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_FUNCTIONS+1}" ]; then
		echo "redis.arrays.functions=${PHP_CLI_REDIS_ARRAYS_FUNCTIONS}"
	elif [ -n "${PHP_REDIS_ARRAYS_FUNCTIONS+1}" ]; then
		echo "redis.arrays.functions=${PHP_REDIS_ARRAYS_FUNCTIONS}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_HOSTS+1}" ]; then
		echo "redis.arrays.hosts=${PHP_CLI_REDIS_ARRAYS_HOSTS}"
	elif [ -n "${PHP_REDIS_ARRAYS_HOSTS+1}" ]; then
		echo "redis.arrays.hosts=${PHP_REDIS_ARRAYS_HOSTS}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_INDEX+1}" ]; then
		echo "redis.arrays.index=${PHP_CLI_REDIS_ARRAYS_INDEX}"
	elif [ -n "${PHP_REDIS_ARRAYS_INDEX+1}" ]; then
		echo "redis.arrays.index=${PHP_REDIS_ARRAYS_INDEX}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_LAZYCONNECT+1}" ]; then
		echo "redis.arrays.lazyconnect=${PHP_CLI_REDIS_ARRAYS_LAZYCONNECT}"
	elif [ -n "${PHP_REDIS_ARRAYS_LAZYCONNECT+1}" ]; then
		echo "redis.arrays.lazyconnect=${PHP_REDIS_ARRAYS_LAZYCONNECT}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_NAMES+1}" ]; then
		echo "redis.arrays.names=${PHP_CLI_REDIS_ARRAYS_NAMES}"
	elif [ -n "${PHP_REDIS_ARRAYS_NAMES+1}" ]; then
		echo "redis.arrays.names=${PHP_REDIS_ARRAYS_NAMES}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_PCONNECT+1}" ]; then
		echo "redis.arrays.pconnect=${PHP_CLI_REDIS_ARRAYS_PCONNECT}"
	elif [ -n "${PHP_REDIS_ARRAYS_PCONNECT+1}" ]; then
		echo "redis.arrays.pconnect=${PHP_REDIS_ARRAYS_PCONNECT}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_PREVIOUS+1}" ]; then
		echo "redis.arrays.previous=${PHP_CLI_REDIS_ARRAYS_PREVIOUS}"
	elif [ -n "${PHP_REDIS_ARRAYS_PREVIOUS+1}" ]; then
		echo "redis.arrays.previous=${PHP_REDIS_ARRAYS_PREVIOUS}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_READTIMEOUT+1}" ]; then
		echo "redis.arrays.readtimeout=${PHP_CLI_REDIS_ARRAYS_READTIMEOUT}"
	elif [ -n "${PHP_REDIS_ARRAYS_READTIMEOUT+1}" ]; then
		echo "redis.arrays.readtimeout=${PHP_REDIS_ARRAYS_READTIMEOUT}"
	fi
	if [ -n "${PHP_CLI_REDIS_ARRAYS_RETRYINTERVAL+1}" ]; then
		echo "redis.arrays.retryinterval=${PHP_CLI_REDIS_ARRAYS_RETRYINTERVAL}"
	elif [ -n "${PHP_REDIS_ARRAYS_RETRYINTERVAL+1}" ]; then
		echo "redis.arrays.retryinterval=${PHP_REDIS_ARRAYS_RETRYINTERVAL}"
	fi
	if [ -n "${PHP_CLI_REDIS_CLUSTERS_AUTH+1}" ]; then
		echo "redis.clusters.auth=${PHP_CLI_REDIS_CLUSTERS_AUTH}"
	elif [ -n "${PHP_REDIS_CLUSTERS_AUTH+1}" ]; then
		echo "redis.clusters.auth=${PHP_REDIS_CLUSTERS_AUTH}"
	fi
	if [ -n "${PHP_CLI_REDIS_CLUSTERS_CACHE_SLOTS+1}" ]; then
		echo "redis.clusters.cache_slots=${PHP_CLI_REDIS_CLUSTERS_CACHE_SLOTS}"
	elif [ -n "${PHP_REDIS_CLUSTERS_CACHE_SLOTS+1}" ]; then
		echo "redis.clusters.cache_slots=${PHP_REDIS_CLUSTERS_CACHE_SLOTS}"
	fi
	if [ -n "${PHP_CLI_REDIS_CLUSTERS_PERSISTENT+1}" ]; then
		echo "redis.clusters.persistent=${PHP_CLI_REDIS_CLUSTERS_PERSISTENT}"
	elif [ -n "${PHP_REDIS_CLUSTERS_PERSISTENT+1}" ]; then
		echo "redis.clusters.persistent=${PHP_REDIS_CLUSTERS_PERSISTENT}"
	fi
	if [ -n "${PHP_CLI_REDIS_CLUSTERS_READ_TIMEOUT+1}" ]; then
		echo "redis.clusters.read_timeout=${PHP_CLI_REDIS_CLUSTERS_READ_TIMEOUT}"
	elif [ -n "${PHP_REDIS_CLUSTERS_READ_TIMEOUT+1}" ]; then
		echo "redis.clusters.read_timeout=${PHP_REDIS_CLUSTERS_READ_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_REDIS_CLUSTERS_SEEDS+1}" ]; then
		echo "redis.clusters.seeds=${PHP_CLI_REDIS_CLUSTERS_SEEDS}"
	elif [ -n "${PHP_REDIS_CLUSTERS_SEEDS+1}" ]; then
		echo "redis.clusters.seeds=${PHP_REDIS_CLUSTERS_SEEDS}"
	fi
	if [ -n "${PHP_CLI_REDIS_CLUSTERS_TIMEOUT+1}" ]; then
		echo "redis.clusters.timeout=${PHP_CLI_REDIS_CLUSTERS_TIMEOUT}"
	elif [ -n "${PHP_REDIS_CLUSTERS_TIMEOUT+1}" ]; then
		echo "redis.clusters.timeout=${PHP_REDIS_CLUSTERS_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_REDIS_PCONNECT_CONNECTION_LIMIT+1}" ]; then
		echo "redis.pconnect.connection_limit=${PHP_CLI_REDIS_PCONNECT_CONNECTION_LIMIT}"
	elif [ -n "${PHP_REDIS_PCONNECT_CONNECTION_LIMIT+1}" ]; then
		echo "redis.pconnect.connection_limit=${PHP_REDIS_PCONNECT_CONNECTION_LIMIT}"
	fi
	if [ -n "${PHP_CLI_REDIS_PCONNECT_ECHO_CHECK_LIVENESS+1}" ]; then
		echo "redis.pconnect.echo_check_liveness=${PHP_CLI_REDIS_PCONNECT_ECHO_CHECK_LIVENESS}"
	elif [ -n "${PHP_REDIS_PCONNECT_ECHO_CHECK_LIVENESS+1}" ]; then
		echo "redis.pconnect.echo_check_liveness=${PHP_REDIS_PCONNECT_ECHO_CHECK_LIVENESS}"
	fi
	if [ -n "${PHP_CLI_REDIS_PCONNECT_POOL_DETECT_DIRTY+1}" ]; then
		echo "redis.pconnect.pool_detect_dirty=${PHP_CLI_REDIS_PCONNECT_POOL_DETECT_DIRTY}"
	elif [ -n "${PHP_REDIS_PCONNECT_POOL_DETECT_DIRTY+1}" ]; then
		echo "redis.pconnect.pool_detect_dirty=${PHP_REDIS_PCONNECT_POOL_DETECT_DIRTY}"
	fi
	if [ -n "${PHP_CLI_REDIS_PCONNECT_POOL_PATTERN+1}" ]; then
		echo "redis.pconnect.pool_pattern=${PHP_CLI_REDIS_PCONNECT_POOL_PATTERN}"
	elif [ -n "${PHP_REDIS_PCONNECT_POOL_PATTERN+1}" ]; then
		echo "redis.pconnect.pool_pattern=${PHP_REDIS_PCONNECT_POOL_PATTERN}"
	fi
	if [ -n "${PHP_CLI_REDIS_PCONNECT_POOL_POLL_TIMEOUT+1}" ]; then
		echo "redis.pconnect.pool_poll_timeout=${PHP_CLI_REDIS_PCONNECT_POOL_POLL_TIMEOUT}"
	elif [ -n "${PHP_REDIS_PCONNECT_POOL_POLL_TIMEOUT+1}" ]; then
		echo "redis.pconnect.pool_poll_timeout=${PHP_REDIS_PCONNECT_POOL_POLL_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_REDIS_PCONNECT_POOLING_ENABLED+1}" ]; then
		echo "redis.pconnect.pooling_enabled=${PHP_CLI_REDIS_PCONNECT_POOLING_ENABLED}"
	elif [ -n "${PHP_REDIS_PCONNECT_POOLING_ENABLED+1}" ]; then
		echo "redis.pconnect.pooling_enabled=${PHP_REDIS_PCONNECT_POOLING_ENABLED}"
	fi
	if [ -n "${PHP_CLI_REDIS_SESSION_EARLY_REFRESH+1}" ]; then
		echo "redis.session.early_refresh=${PHP_CLI_REDIS_SESSION_EARLY_REFRESH}"
	elif [ -n "${PHP_REDIS_SESSION_EARLY_REFRESH+1}" ]; then
		echo "redis.session.early_refresh=${PHP_REDIS_SESSION_EARLY_REFRESH}"
	fi
	if [ -n "${PHP_CLI_REDIS_SESSION_LOCK_EXPIRE+1}" ]; then
		echo "redis.session.lock_expire=${PHP_CLI_REDIS_SESSION_LOCK_EXPIRE}"
	elif [ -n "${PHP_REDIS_SESSION_LOCK_EXPIRE+1}" ]; then
		echo "redis.session.lock_expire=${PHP_REDIS_SESSION_LOCK_EXPIRE}"
	fi
	if [ -n "${PHP_CLI_REDIS_SESSION_LOCK_RETRIES+1}" ]; then
		echo "redis.session.lock_retries=${PHP_CLI_REDIS_SESSION_LOCK_RETRIES}"
	elif [ -n "${PHP_REDIS_SESSION_LOCK_RETRIES+1}" ]; then
		echo "redis.session.lock_retries=${PHP_REDIS_SESSION_LOCK_RETRIES}"
	fi
	if [ -n "${PHP_CLI_REDIS_SESSION_LOCK_WAIT_TIME+1}" ]; then
		echo "redis.session.lock_wait_time=${PHP_CLI_REDIS_SESSION_LOCK_WAIT_TIME}"
	elif [ -n "${PHP_REDIS_SESSION_LOCK_WAIT_TIME+1}" ]; then
		echo "redis.session.lock_wait_time=${PHP_REDIS_SESSION_LOCK_WAIT_TIME}"
	fi
	if [ -n "${PHP_CLI_REDIS_SESSION_LOCKING_ENABLED+1}" ]; then
		echo "redis.session.locking_enabled=${PHP_CLI_REDIS_SESSION_LOCKING_ENABLED}"
	elif [ -n "${PHP_REDIS_SESSION_LOCKING_ENABLED+1}" ]; then
		echo "redis.session.locking_enabled=${PHP_REDIS_SESSION_LOCKING_ENABLED}"
	fi
	if [ -n "${PHP_CLI_REGISTER_ARGC_ARGV+1}" ]; then
		echo "register_argc_argv=${PHP_CLI_REGISTER_ARGC_ARGV}"
	elif [ -n "${PHP_REGISTER_ARGC_ARGV+1}" ]; then
		echo "register_argc_argv=${PHP_REGISTER_ARGC_ARGV}"
	fi
	if [ -n "${PHP_CLI_REPORT_MEMLEAKS+1}" ]; then
		echo "report_memleaks=${PHP_CLI_REPORT_MEMLEAKS}"
	elif [ -n "${PHP_REPORT_MEMLEAKS+1}" ]; then
		echo "report_memleaks=${PHP_REPORT_MEMLEAKS}"
	fi
	if [ -n "${PHP_CLI_REPORT_ZEND_DEBUG+1}" ]; then
		echo "report_zend_debug=${PHP_CLI_REPORT_ZEND_DEBUG}"
	elif [ -n "${PHP_REPORT_ZEND_DEBUG+1}" ]; then
		echo "report_zend_debug=${PHP_REPORT_ZEND_DEBUG}"
	fi
	if [ -n "${PHP_CLI_REQUEST_ORDER+1}" ]; then
		echo "request_order=${PHP_CLI_REQUEST_ORDER}"
	elif [ -n "${PHP_REQUEST_ORDER+1}" ]; then
		echo "request_order=${PHP_REQUEST_ORDER}"
	fi
	if [ -n "${PHP_CLI_SENDMAIL_FROM+1}" ]; then
		echo "sendmail_from=${PHP_CLI_SENDMAIL_FROM}"
	elif [ -n "${PHP_SENDMAIL_FROM+1}" ]; then
		echo "sendmail_from=${PHP_SENDMAIL_FROM}"
	fi
	if [ -n "${PHP_CLI_SENDMAIL_PATH+1}" ]; then
		echo "sendmail_path=${PHP_CLI_SENDMAIL_PATH}"
	elif [ -n "${PHP_SENDMAIL_PATH+1}" ]; then
		echo "sendmail_path=${PHP_SENDMAIL_PATH}"
	fi
	if [ -n "${PHP_CLI_SERIALIZE_PRECISION+1}" ]; then
		echo "serialize_precision=${PHP_CLI_SERIALIZE_PRECISION}"
	elif [ -n "${PHP_SERIALIZE_PRECISION+1}" ]; then
		echo "serialize_precision=${PHP_SERIALIZE_PRECISION}"
	fi
	if [ -n "${PHP_CLI_SESSION_AUTO_START+1}" ]; then
		echo "session.auto_start=${PHP_CLI_SESSION_AUTO_START}"
	elif [ -n "${PHP_SESSION_AUTO_START+1}" ]; then
		echo "session.auto_start=${PHP_SESSION_AUTO_START}"
	fi
	if [ -n "${PHP_CLI_SESSION_CACHE_EXPIRE+1}" ]; then
		echo "session.cache_expire=${PHP_CLI_SESSION_CACHE_EXPIRE}"
	elif [ -n "${PHP_SESSION_CACHE_EXPIRE+1}" ]; then
		echo "session.cache_expire=${PHP_SESSION_CACHE_EXPIRE}"
	fi
	if [ -n "${PHP_CLI_SESSION_CACHE_LIMITER+1}" ]; then
		echo "session.cache_limiter=${PHP_CLI_SESSION_CACHE_LIMITER}"
	elif [ -n "${PHP_SESSION_CACHE_LIMITER+1}" ]; then
		echo "session.cache_limiter=${PHP_SESSION_CACHE_LIMITER}"
	fi
	if [ -n "${PHP_CLI_SESSION_COOKIE_DOMAIN+1}" ]; then
		echo "session.cookie_domain=${PHP_CLI_SESSION_COOKIE_DOMAIN}"
	elif [ -n "${PHP_SESSION_COOKIE_DOMAIN+1}" ]; then
		echo "session.cookie_domain=${PHP_SESSION_COOKIE_DOMAIN}"
	fi
	if [ -n "${PHP_CLI_SESSION_COOKIE_HTTPONLY+1}" ]; then
		echo "session.cookie_httponly=${PHP_CLI_SESSION_COOKIE_HTTPONLY}"
	elif [ -n "${PHP_SESSION_COOKIE_HTTPONLY+1}" ]; then
		echo "session.cookie_httponly=${PHP_SESSION_COOKIE_HTTPONLY}"
	fi
	if [ -n "${PHP_CLI_SESSION_COOKIE_LIFETIME+1}" ]; then
		echo "session.cookie_lifetime=${PHP_CLI_SESSION_COOKIE_LIFETIME}"
	elif [ -n "${PHP_SESSION_COOKIE_LIFETIME+1}" ]; then
		echo "session.cookie_lifetime=${PHP_SESSION_COOKIE_LIFETIME}"
	fi
	if [ -n "${PHP_CLI_SESSION_COOKIE_PATH+1}" ]; then
		echo "session.cookie_path=${PHP_CLI_SESSION_COOKIE_PATH}"
	elif [ -n "${PHP_SESSION_COOKIE_PATH+1}" ]; then
		echo "session.cookie_path=${PHP_SESSION_COOKIE_PATH}"
	fi
	if [ -n "${PHP_CLI_SESSION_COOKIE_SAMESITE+1}" ]; then
		echo "session.cookie_samesite=${PHP_CLI_SESSION_COOKIE_SAMESITE}"
	elif [ -n "${PHP_SESSION_COOKIE_SAMESITE+1}" ]; then
		echo "session.cookie_samesite=${PHP_SESSION_COOKIE_SAMESITE}"
	fi
	if [ -n "${PHP_CLI_SESSION_COOKIE_SECURE+1}" ]; then
		echo "session.cookie_secure=${PHP_CLI_SESSION_COOKIE_SECURE}"
	elif [ -n "${PHP_SESSION_COOKIE_SECURE+1}" ]; then
		echo "session.cookie_secure=${PHP_SESSION_COOKIE_SECURE}"
	fi
	if [ -n "${PHP_CLI_SESSION_GC_DIVISOR+1}" ]; then
		echo "session.gc_divisor=${PHP_CLI_SESSION_GC_DIVISOR}"
	elif [ -n "${PHP_SESSION_GC_DIVISOR+1}" ]; then
		echo "session.gc_divisor=${PHP_SESSION_GC_DIVISOR}"
	fi
	if [ -n "${PHP_CLI_SESSION_GC_MAXLIFETIME+1}" ]; then
		echo "session.gc_maxlifetime=${PHP_CLI_SESSION_GC_MAXLIFETIME}"
	elif [ -n "${PHP_SESSION_GC_MAXLIFETIME+1}" ]; then
		echo "session.gc_maxlifetime=${PHP_SESSION_GC_MAXLIFETIME}"
	fi
	if [ -n "${PHP_CLI_SESSION_GC_PROBABILITY+1}" ]; then
		echo "session.gc_probability=${PHP_CLI_SESSION_GC_PROBABILITY}"
	elif [ -n "${PHP_SESSION_GC_PROBABILITY+1}" ]; then
		echo "session.gc_probability=${PHP_SESSION_GC_PROBABILITY}"
	fi
	if [ -n "${PHP_CLI_SESSION_LAZY_WRITE+1}" ]; then
		echo "session.lazy_write=${PHP_CLI_SESSION_LAZY_WRITE}"
	elif [ -n "${PHP_SESSION_LAZY_WRITE+1}" ]; then
		echo "session.lazy_write=${PHP_SESSION_LAZY_WRITE}"
	fi
	if [ -n "${PHP_CLI_SESSION_NAME+1}" ]; then
		echo "session.name=${PHP_CLI_SESSION_NAME}"
	elif [ -n "${PHP_SESSION_NAME+1}" ]; then
		echo "session.name=${PHP_SESSION_NAME}"
	fi
	if [ -n "${PHP_CLI_SESSION_REFERER_CHECK+1}" ]; then
		echo "session.referer_check=${PHP_CLI_SESSION_REFERER_CHECK}"
	elif [ -n "${PHP_SESSION_REFERER_CHECK+1}" ]; then
		echo "session.referer_check=${PHP_SESSION_REFERER_CHECK}"
	fi
	if [ -n "${PHP_CLI_SESSION_SAVE_HANDLER+1}" ]; then
		echo "session.save_handler=${PHP_CLI_SESSION_SAVE_HANDLER}"
	elif [ -n "${PHP_SESSION_SAVE_HANDLER+1}" ]; then
		echo "session.save_handler=${PHP_SESSION_SAVE_HANDLER}"
	fi
	if [ -n "${PHP_CLI_SESSION_SAVE_PATH+1}" ]; then
		echo "session.save_path=${PHP_CLI_SESSION_SAVE_PATH}"
	elif [ -n "${PHP_SESSION_SAVE_PATH+1}" ]; then
		echo "session.save_path=${PHP_SESSION_SAVE_PATH}"
	fi
	if [ -n "${PHP_CLI_SESSION_SERIALIZE_HANDLER+1}" ]; then
		echo "session.serialize_handler=${PHP_CLI_SESSION_SERIALIZE_HANDLER}"
	elif [ -n "${PHP_SESSION_SERIALIZE_HANDLER+1}" ]; then
		echo "session.serialize_handler=${PHP_SESSION_SERIALIZE_HANDLER}"
	fi
	if [ -n "${PHP_CLI_SESSION_SID_BITS_PER_CHARACTER+1}" ]; then
		echo "session.sid_bits_per_character=${PHP_CLI_SESSION_SID_BITS_PER_CHARACTER}"
	elif [ -n "${PHP_SESSION_SID_BITS_PER_CHARACTER+1}" ]; then
		echo "session.sid_bits_per_character=${PHP_SESSION_SID_BITS_PER_CHARACTER}"
	fi
	if [ -n "${PHP_CLI_SESSION_SID_LENGTH+1}" ]; then
		echo "session.sid_length=${PHP_CLI_SESSION_SID_LENGTH}"
	elif [ -n "${PHP_SESSION_SID_LENGTH+1}" ]; then
		echo "session.sid_length=${PHP_SESSION_SID_LENGTH}"
	fi
	if [ -n "${PHP_CLI_SESSION_TRANS_SID_HOSTS+1}" ]; then
		echo "session.trans_sid_hosts=${PHP_CLI_SESSION_TRANS_SID_HOSTS}"
	elif [ -n "${PHP_SESSION_TRANS_SID_HOSTS+1}" ]; then
		echo "session.trans_sid_hosts=${PHP_SESSION_TRANS_SID_HOSTS}"
	fi
	if [ -n "${PHP_CLI_SESSION_TRANS_SID_TAGS+1}" ]; then
		echo "session.trans_sid_tags=${PHP_CLI_SESSION_TRANS_SID_TAGS}"
	elif [ -n "${PHP_SESSION_TRANS_SID_TAGS+1}" ]; then
		echo "session.trans_sid_tags=${PHP_SESSION_TRANS_SID_TAGS}"
	fi
	if [ -n "${PHP_CLI_SESSION_UPLOAD_PROGRESS_CLEANUP+1}" ]; then
		echo "session.upload_progress.cleanup=${PHP_CLI_SESSION_UPLOAD_PROGRESS_CLEANUP}"
	elif [ -n "${PHP_SESSION_UPLOAD_PROGRESS_CLEANUP+1}" ]; then
		echo "session.upload_progress.cleanup=${PHP_SESSION_UPLOAD_PROGRESS_CLEANUP}"
	fi
	if [ -n "${PHP_CLI_SESSION_UPLOAD_PROGRESS_ENABLED+1}" ]; then
		echo "session.upload_progress.enabled=${PHP_CLI_SESSION_UPLOAD_PROGRESS_ENABLED}"
	elif [ -n "${PHP_SESSION_UPLOAD_PROGRESS_ENABLED+1}" ]; then
		echo "session.upload_progress.enabled=${PHP_SESSION_UPLOAD_PROGRESS_ENABLED}"
	fi
	if [ -n "${PHP_CLI_SESSION_UPLOAD_PROGRESS_FREQ+1}" ]; then
		echo "session.upload_progress.freq=${PHP_CLI_SESSION_UPLOAD_PROGRESS_FREQ}"
	elif [ -n "${PHP_SESSION_UPLOAD_PROGRESS_FREQ+1}" ]; then
		echo "session.upload_progress.freq=${PHP_SESSION_UPLOAD_PROGRESS_FREQ}"
	fi
	if [ -n "${PHP_CLI_SESSION_UPLOAD_PROGRESS_MIN_FREQ+1}" ]; then
		echo "session.upload_progress.min_freq=${PHP_CLI_SESSION_UPLOAD_PROGRESS_MIN_FREQ}"
	elif [ -n "${PHP_SESSION_UPLOAD_PROGRESS_MIN_FREQ+1}" ]; then
		echo "session.upload_progress.min_freq=${PHP_SESSION_UPLOAD_PROGRESS_MIN_FREQ}"
	fi
	if [ -n "${PHP_CLI_SESSION_UPLOAD_PROGRESS_NAME+1}" ]; then
		echo "session.upload_progress.name=${PHP_CLI_SESSION_UPLOAD_PROGRESS_NAME}"
	elif [ -n "${PHP_SESSION_UPLOAD_PROGRESS_NAME+1}" ]; then
		echo "session.upload_progress.name=${PHP_SESSION_UPLOAD_PROGRESS_NAME}"
	fi
	if [ -n "${PHP_CLI_SESSION_UPLOAD_PROGRESS_PREFIX+1}" ]; then
		echo "session.upload_progress.prefix=${PHP_CLI_SESSION_UPLOAD_PROGRESS_PREFIX}"
	elif [ -n "${PHP_SESSION_UPLOAD_PROGRESS_PREFIX+1}" ]; then
		echo "session.upload_progress.prefix=${PHP_SESSION_UPLOAD_PROGRESS_PREFIX}"
	fi
	if [ -n "${PHP_CLI_SESSION_USE_COOKIES+1}" ]; then
		echo "session.use_cookies=${PHP_CLI_SESSION_USE_COOKIES}"
	elif [ -n "${PHP_SESSION_USE_COOKIES+1}" ]; then
		echo "session.use_cookies=${PHP_SESSION_USE_COOKIES}"
	fi
	if [ -n "${PHP_CLI_SESSION_USE_ONLY_COOKIES+1}" ]; then
		echo "session.use_only_cookies=${PHP_CLI_SESSION_USE_ONLY_COOKIES}"
	elif [ -n "${PHP_SESSION_USE_ONLY_COOKIES+1}" ]; then
		echo "session.use_only_cookies=${PHP_SESSION_USE_ONLY_COOKIES}"
	fi
	if [ -n "${PHP_CLI_SESSION_USE_STRICT_MODE+1}" ]; then
		echo "session.use_strict_mode=${PHP_CLI_SESSION_USE_STRICT_MODE}"
	elif [ -n "${PHP_SESSION_USE_STRICT_MODE+1}" ]; then
		echo "session.use_strict_mode=${PHP_SESSION_USE_STRICT_MODE}"
	fi
	if [ -n "${PHP_CLI_SESSION_USE_TRANS_SID+1}" ]; then
		echo "session.use_trans_sid=${PHP_CLI_SESSION_USE_TRANS_SID}"
	elif [ -n "${PHP_SESSION_USE_TRANS_SID+1}" ]; then
		echo "session.use_trans_sid=${PHP_SESSION_USE_TRANS_SID}"
	fi
	if [ -n "${PHP_CLI_SHORT_OPEN_TAG+1}" ]; then
		echo "short_open_tag=${PHP_CLI_SHORT_OPEN_TAG}"
	elif [ -n "${PHP_SHORT_OPEN_TAG+1}" ]; then
		echo "short_open_tag=${PHP_SHORT_OPEN_TAG}"
	fi
	if [ -n "${PHP_CLI_SMTP+1}" ]; then
		echo "SMTP=${PHP_CLI_SMTP}"
	elif [ -n "${PHP_SMTP+1}" ]; then
		echo "SMTP=${PHP_SMTP}"
	fi
	if [ -n "${PHP_CLI_SMTP_PORT+1}" ]; then
		echo "smtp_port=${PHP_CLI_SMTP_PORT}"
	elif [ -n "${PHP_SMTP_PORT+1}" ]; then
		echo "smtp_port=${PHP_SMTP_PORT}"
	fi
	if [ -n "${PHP_CLI_SOAP_WSDL_CACHE+1}" ]; then
		echo "soap.wsdl_cache=${PHP_CLI_SOAP_WSDL_CACHE}"
	elif [ -n "${PHP_SOAP_WSDL_CACHE+1}" ]; then
		echo "soap.wsdl_cache=${PHP_SOAP_WSDL_CACHE}"
	fi
	if [ -n "${PHP_CLI_SOAP_WSDL_CACHE_DIR+1}" ]; then
		echo "soap.wsdl_cache_dir=${PHP_CLI_SOAP_WSDL_CACHE_DIR}"
	elif [ -n "${PHP_SOAP_WSDL_CACHE_DIR+1}" ]; then
		echo "soap.wsdl_cache_dir=${PHP_SOAP_WSDL_CACHE_DIR}"
	fi
	if [ -n "${PHP_CLI_SOAP_WSDL_CACHE_ENABLED+1}" ]; then
		echo "soap.wsdl_cache_enabled=${PHP_CLI_SOAP_WSDL_CACHE_ENABLED}"
	elif [ -n "${PHP_SOAP_WSDL_CACHE_ENABLED+1}" ]; then
		echo "soap.wsdl_cache_enabled=${PHP_SOAP_WSDL_CACHE_ENABLED}"
	fi
	if [ -n "${PHP_CLI_SOAP_WSDL_CACHE_LIMIT+1}" ]; then
		echo "soap.wsdl_cache_limit=${PHP_CLI_SOAP_WSDL_CACHE_LIMIT}"
	elif [ -n "${PHP_SOAP_WSDL_CACHE_LIMIT+1}" ]; then
		echo "soap.wsdl_cache_limit=${PHP_SOAP_WSDL_CACHE_LIMIT}"
	fi
	if [ -n "${PHP_CLI_SOAP_WSDL_CACHE_TTL+1}" ]; then
		echo "soap.wsdl_cache_ttl=${PHP_CLI_SOAP_WSDL_CACHE_TTL}"
	elif [ -n "${PHP_SOAP_WSDL_CACHE_TTL+1}" ]; then
		echo "soap.wsdl_cache_ttl=${PHP_SOAP_WSDL_CACHE_TTL}"
	fi
	if [ -n "${PHP_CLI_SQLITE3_DEFENSIVE+1}" ]; then
		echo "sqlite3.defensive=${PHP_CLI_SQLITE3_DEFENSIVE}"
	elif [ -n "${PHP_SQLITE3_DEFENSIVE+1}" ]; then
		echo "sqlite3.defensive=${PHP_SQLITE3_DEFENSIVE}"
	fi
	if [ -n "${PHP_CLI_SQLITE3_EXTENSION_DIR+1}" ]; then
		echo "sqlite3.extension_dir=${PHP_CLI_SQLITE3_EXTENSION_DIR}"
	elif [ -n "${PHP_SQLITE3_EXTENSION_DIR+1}" ]; then
		echo "sqlite3.extension_dir=${PHP_SQLITE3_EXTENSION_DIR}"
	fi
	if [ -n "${PHP_CLI_STOMP_DEFAULT_BROKER+1}" ]; then
		echo "stomp.default_broker=${PHP_CLI_STOMP_DEFAULT_BROKER}"
	elif [ -n "${PHP_STOMP_DEFAULT_BROKER+1}" ]; then
		echo "stomp.default_broker=${PHP_STOMP_DEFAULT_BROKER}"
	fi
	if [ -n "${PHP_CLI_STOMP_DEFAULT_CONNECTION_TIMEOUT_SEC+1}" ]; then
		echo "stomp.default_connection_timeout_sec=${PHP_CLI_STOMP_DEFAULT_CONNECTION_TIMEOUT_SEC}"
	elif [ -n "${PHP_STOMP_DEFAULT_CONNECTION_TIMEOUT_SEC+1}" ]; then
		echo "stomp.default_connection_timeout_sec=${PHP_STOMP_DEFAULT_CONNECTION_TIMEOUT_SEC}"
	fi
	if [ -n "${PHP_CLI_STOMP_DEFAULT_CONNECTION_TIMEOUT_USEC+1}" ]; then
		echo "stomp.default_connection_timeout_usec=${PHP_CLI_STOMP_DEFAULT_CONNECTION_TIMEOUT_USEC}"
	elif [ -n "${PHP_STOMP_DEFAULT_CONNECTION_TIMEOUT_USEC+1}" ]; then
		echo "stomp.default_connection_timeout_usec=${PHP_STOMP_DEFAULT_CONNECTION_TIMEOUT_USEC}"
	fi
	if [ -n "${PHP_CLI_STOMP_DEFAULT_PASSWORD+1}" ]; then
		echo "stomp.default_password=${PHP_CLI_STOMP_DEFAULT_PASSWORD}"
	elif [ -n "${PHP_STOMP_DEFAULT_PASSWORD+1}" ]; then
		echo "stomp.default_password=${PHP_STOMP_DEFAULT_PASSWORD}"
	fi
	if [ -n "${PHP_CLI_STOMP_DEFAULT_READ_TIMEOUT_SEC+1}" ]; then
		echo "stomp.default_read_timeout_sec=${PHP_CLI_STOMP_DEFAULT_READ_TIMEOUT_SEC}"
	elif [ -n "${PHP_STOMP_DEFAULT_READ_TIMEOUT_SEC+1}" ]; then
		echo "stomp.default_read_timeout_sec=${PHP_STOMP_DEFAULT_READ_TIMEOUT_SEC}"
	fi
	if [ -n "${PHP_CLI_STOMP_DEFAULT_READ_TIMEOUT_USEC+1}" ]; then
		echo "stomp.default_read_timeout_usec=${PHP_CLI_STOMP_DEFAULT_READ_TIMEOUT_USEC}"
	elif [ -n "${PHP_STOMP_DEFAULT_READ_TIMEOUT_USEC+1}" ]; then
		echo "stomp.default_read_timeout_usec=${PHP_STOMP_DEFAULT_READ_TIMEOUT_USEC}"
	fi
	if [ -n "${PHP_CLI_STOMP_DEFAULT_USERNAME+1}" ]; then
		echo "stomp.default_username=${PHP_CLI_STOMP_DEFAULT_USERNAME}"
	elif [ -n "${PHP_STOMP_DEFAULT_USERNAME+1}" ]; then
		echo "stomp.default_username=${PHP_STOMP_DEFAULT_USERNAME}"
	fi
	if [ -n "${PHP_CLI_SWOOLE_DISPLAY_ERRORS+1}" ]; then
		echo "swoole.display_errors=${PHP_CLI_SWOOLE_DISPLAY_ERRORS}"
	elif [ -n "${PHP_SWOOLE_DISPLAY_ERRORS+1}" ]; then
		echo "swoole.display_errors=${PHP_SWOOLE_DISPLAY_ERRORS}"
	fi
	if [ -n "${PHP_CLI_SWOOLE_ENABLE_COROUTINE+1}" ]; then
		echo "swoole.enable_coroutine=${PHP_CLI_SWOOLE_ENABLE_COROUTINE}"
	elif [ -n "${PHP_SWOOLE_ENABLE_COROUTINE+1}" ]; then
		echo "swoole.enable_coroutine=${PHP_SWOOLE_ENABLE_COROUTINE}"
	fi
	if [ -n "${PHP_CLI_SWOOLE_ENABLE_LIBRARY+1}" ]; then
		echo "swoole.enable_library=${PHP_CLI_SWOOLE_ENABLE_LIBRARY}"
	elif [ -n "${PHP_SWOOLE_ENABLE_LIBRARY+1}" ]; then
		echo "swoole.enable_library=${PHP_SWOOLE_ENABLE_LIBRARY}"
	fi
	if [ -n "${PHP_CLI_SWOOLE_ENABLE_PREEMPTIVE_SCHEDULER+1}" ]; then
		echo "swoole.enable_preemptive_scheduler=${PHP_CLI_SWOOLE_ENABLE_PREEMPTIVE_SCHEDULER}"
	elif [ -n "${PHP_SWOOLE_ENABLE_PREEMPTIVE_SCHEDULER+1}" ]; then
		echo "swoole.enable_preemptive_scheduler=${PHP_SWOOLE_ENABLE_PREEMPTIVE_SCHEDULER}"
	fi
	if [ -n "${PHP_CLI_SWOOLE_UNIXSOCK_BUFFER_SIZE+1}" ]; then
		echo "swoole.unixsock_buffer_size=${PHP_CLI_SWOOLE_UNIXSOCK_BUFFER_SIZE}"
	elif [ -n "${PHP_SWOOLE_UNIXSOCK_BUFFER_SIZE+1}" ]; then
		echo "swoole.unixsock_buffer_size=${PHP_SWOOLE_UNIXSOCK_BUFFER_SIZE}"
	fi
	if [ -n "${PHP_CLI_SWOOLE_USE_SHORTNAME+1}" ]; then
		echo "swoole.use_shortname=${PHP_CLI_SWOOLE_USE_SHORTNAME}"
	elif [ -n "${PHP_SWOOLE_USE_SHORTNAME+1}" ]; then
		echo "swoole.use_shortname=${PHP_SWOOLE_USE_SHORTNAME}"
	fi
	if [ -n "${PHP_CLI_SYS_TEMP_DIR+1}" ]; then
		echo "sys_temp_dir=${PHP_CLI_SYS_TEMP_DIR}"
	elif [ -n "${PHP_SYS_TEMP_DIR+1}" ]; then
		echo "sys_temp_dir=${PHP_SYS_TEMP_DIR}"
	fi
	if [ -n "${PHP_CLI_SYSLOG_FACILITY+1}" ]; then
		echo "syslog.facility=${PHP_CLI_SYSLOG_FACILITY}"
	elif [ -n "${PHP_SYSLOG_FACILITY+1}" ]; then
		echo "syslog.facility=${PHP_SYSLOG_FACILITY}"
	fi
	if [ -n "${PHP_CLI_SYSLOG_FILTER+1}" ]; then
		echo "syslog.filter=${PHP_CLI_SYSLOG_FILTER}"
	elif [ -n "${PHP_SYSLOG_FILTER+1}" ]; then
		echo "syslog.filter=${PHP_SYSLOG_FILTER}"
	fi
	if [ -n "${PHP_CLI_SYSLOG_IDENT+1}" ]; then
		echo "syslog.ident=${PHP_CLI_SYSLOG_IDENT}"
	elif [ -n "${PHP_SYSLOG_IDENT+1}" ]; then
		echo "syslog.ident=${PHP_SYSLOG_IDENT}"
	fi
	if [ -n "${PHP_CLI_TIDEWAYS_XHPROF_CLOCK_USE_RDTSC+1}" ]; then
		echo "tideways_xhprof.clock_use_rdtsc=${PHP_CLI_TIDEWAYS_XHPROF_CLOCK_USE_RDTSC}"
	elif [ -n "${PHP_TIDEWAYS_XHPROF_CLOCK_USE_RDTSC+1}" ]; then
		echo "tideways_xhprof.clock_use_rdtsc=${PHP_TIDEWAYS_XHPROF_CLOCK_USE_RDTSC}"
	fi
	if [ -n "${PHP_CLI_TIDY_CLEAN_OUTPUT+1}" ]; then
		echo "tidy.clean_output=${PHP_CLI_TIDY_CLEAN_OUTPUT}"
	elif [ -n "${PHP_TIDY_CLEAN_OUTPUT+1}" ]; then
		echo "tidy.clean_output=${PHP_TIDY_CLEAN_OUTPUT}"
	fi
	if [ -n "${PHP_CLI_TIDY_DEFAULT_CONFIG+1}" ]; then
		echo "tidy.default_config=${PHP_CLI_TIDY_DEFAULT_CONFIG}"
	elif [ -n "${PHP_TIDY_DEFAULT_CONFIG+1}" ]; then
		echo "tidy.default_config=${PHP_TIDY_DEFAULT_CONFIG}"
	fi
	if [ -n "${PHP_CLI_TRACK_ERRORS+1}" ]; then
		echo "track_errors=${PHP_CLI_TRACK_ERRORS}"
	elif [ -n "${PHP_TRACK_ERRORS+1}" ]; then
		echo "track_errors=${PHP_TRACK_ERRORS}"
	fi
	if [ -n "${PHP_CLI_UNSERIALIZE_CALLBACK_FUNC+1}" ]; then
		echo "unserialize_callback_func=${PHP_CLI_UNSERIALIZE_CALLBACK_FUNC}"
	elif [ -n "${PHP_UNSERIALIZE_CALLBACK_FUNC+1}" ]; then
		echo "unserialize_callback_func=${PHP_UNSERIALIZE_CALLBACK_FUNC}"
	fi
	if [ -n "${PHP_CLI_UNSERIALIZE_MAX_DEPTH+1}" ]; then
		echo "unserialize_max_depth=${PHP_CLI_UNSERIALIZE_MAX_DEPTH}"
	elif [ -n "${PHP_UNSERIALIZE_MAX_DEPTH+1}" ]; then
		echo "unserialize_max_depth=${PHP_UNSERIALIZE_MAX_DEPTH}"
	fi
	if [ -n "${PHP_CLI_UOPZ_DISABLE+1}" ]; then
		echo "uopz.disable=${PHP_CLI_UOPZ_DISABLE}"
	elif [ -n "${PHP_UOPZ_DISABLE+1}" ]; then
		echo "uopz.disable=${PHP_UOPZ_DISABLE}"
	fi
	if [ -n "${PHP_CLI_UOPZ_EXIT+1}" ]; then
		echo "uopz.exit=${PHP_CLI_UOPZ_EXIT}"
	elif [ -n "${PHP_UOPZ_EXIT+1}" ]; then
		echo "uopz.exit=${PHP_UOPZ_EXIT}"
	fi
	if [ -n "${PHP_CLI_UPLOAD_MAX_FILESIZE+1}" ]; then
		echo "upload_max_filesize=${PHP_CLI_UPLOAD_MAX_FILESIZE}"
	elif [ -n "${PHP_UPLOAD_MAX_FILESIZE+1}" ]; then
		echo "upload_max_filesize=${PHP_UPLOAD_MAX_FILESIZE}"
	fi
	if [ -n "${PHP_CLI_UPLOAD_TMP_DIR+1}" ]; then
		echo "upload_tmp_dir=${PHP_CLI_UPLOAD_TMP_DIR}"
	elif [ -n "${PHP_UPLOAD_TMP_DIR+1}" ]; then
		echo "upload_tmp_dir=${PHP_UPLOAD_TMP_DIR}"
	fi
	if [ -n "${PHP_CLI_UPLOADPROGRESS_FILE_CONTENTS_TEMPLATE+1}" ]; then
		echo "uploadprogress.file.contents_template=${PHP_CLI_UPLOADPROGRESS_FILE_CONTENTS_TEMPLATE}"
	elif [ -n "${PHP_UPLOADPROGRESS_FILE_CONTENTS_TEMPLATE+1}" ]; then
		echo "uploadprogress.file.contents_template=${PHP_UPLOADPROGRESS_FILE_CONTENTS_TEMPLATE}"
	fi
	if [ -n "${PHP_CLI_UPLOADPROGRESS_FILE_FILENAME_TEMPLATE+1}" ]; then
		echo "uploadprogress.file.filename_template=${PHP_CLI_UPLOADPROGRESS_FILE_FILENAME_TEMPLATE}"
	elif [ -n "${PHP_UPLOADPROGRESS_FILE_FILENAME_TEMPLATE+1}" ]; then
		echo "uploadprogress.file.filename_template=${PHP_UPLOADPROGRESS_FILE_FILENAME_TEMPLATE}"
	fi
	if [ -n "${PHP_CLI_UPLOADPROGRESS_GET_CONTENTS+1}" ]; then
		echo "uploadprogress.get_contents=${PHP_CLI_UPLOADPROGRESS_GET_CONTENTS}"
	elif [ -n "${PHP_UPLOADPROGRESS_GET_CONTENTS+1}" ]; then
		echo "uploadprogress.get_contents=${PHP_UPLOADPROGRESS_GET_CONTENTS}"
	fi
	if [ -n "${PHP_CLI_URL_REWRITER_HOSTS+1}" ]; then
		echo "url_rewriter.hosts=${PHP_CLI_URL_REWRITER_HOSTS}"
	elif [ -n "${PHP_URL_REWRITER_HOSTS+1}" ]; then
		echo "url_rewriter.hosts=${PHP_URL_REWRITER_HOSTS}"
	fi
	if [ -n "${PHP_CLI_URL_REWRITER_TAGS+1}" ]; then
		echo "url_rewriter.tags=${PHP_CLI_URL_REWRITER_TAGS}"
	elif [ -n "${PHP_URL_REWRITER_TAGS+1}" ]; then
		echo "url_rewriter.tags=${PHP_URL_REWRITER_TAGS}"
	fi
	if [ -n "${PHP_CLI_USER_AGENT+1}" ]; then
		echo "user_agent=${PHP_CLI_USER_AGENT}"
	elif [ -n "${PHP_USER_AGENT+1}" ]; then
		echo "user_agent=${PHP_USER_AGENT}"
	fi
	if [ -n "${PHP_CLI_USER_DIR+1}" ]; then
		echo "user_dir=${PHP_CLI_USER_DIR}"
	elif [ -n "${PHP_USER_DIR+1}" ]; then
		echo "user_dir=${PHP_USER_DIR}"
	fi
	if [ -n "${PHP_CLI_USER_INI_CACHE_TTL+1}" ]; then
		echo "user_ini.cache_ttl=${PHP_CLI_USER_INI_CACHE_TTL}"
	elif [ -n "${PHP_USER_INI_CACHE_TTL+1}" ]; then
		echo "user_ini.cache_ttl=${PHP_USER_INI_CACHE_TTL}"
	fi
	if [ -n "${PHP_CLI_USER_INI_FILENAME+1}" ]; then
		echo "user_ini.filename=${PHP_CLI_USER_INI_FILENAME}"
	elif [ -n "${PHP_USER_INI_FILENAME+1}" ]; then
		echo "user_ini.filename=${PHP_USER_INI_FILENAME}"
	fi
	if [ -n "${PHP_CLI_VARIABLES_ORDER+1}" ]; then
		echo "variables_order=${PHP_CLI_VARIABLES_ORDER}"
	elif [ -n "${PHP_VARIABLES_ORDER+1}" ]; then
		echo "variables_order=${PHP_VARIABLES_ORDER}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_AUTO_TRACE+1}" ]; then
		echo "xdebug.auto_trace=${PHP_CLI_XDEBUG_AUTO_TRACE}"
	elif [ -n "${PHP_XDEBUG_AUTO_TRACE+1}" ]; then
		echo "xdebug.auto_trace=${PHP_XDEBUG_AUTO_TRACE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_CLI_COLOR+1}" ]; then
		echo "xdebug.cli_color=${PHP_CLI_XDEBUG_CLI_COLOR}"
	elif [ -n "${PHP_XDEBUG_CLI_COLOR+1}" ]; then
		echo "xdebug.cli_color=${PHP_XDEBUG_CLI_COLOR}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_CLIENT_DISCOVERY_HEADER+1}" ]; then
		echo "xdebug.client_discovery_header=${PHP_CLI_XDEBUG_CLIENT_DISCOVERY_HEADER}"
	elif [ -n "${PHP_XDEBUG_CLIENT_DISCOVERY_HEADER+1}" ]; then
		echo "xdebug.client_discovery_header=${PHP_XDEBUG_CLIENT_DISCOVERY_HEADER}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_CLIENT_HOST+1}" ]; then
		echo "xdebug.client_host=${PHP_CLI_XDEBUG_CLIENT_HOST}"
	elif [ -n "${PHP_XDEBUG_CLIENT_HOST+1}" ]; then
		echo "xdebug.client_host=${PHP_XDEBUG_CLIENT_HOST}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_CLIENT_PORT+1}" ]; then
		echo "xdebug.client_port=${PHP_CLI_XDEBUG_CLIENT_PORT}"
	elif [ -n "${PHP_XDEBUG_CLIENT_PORT+1}" ]; then
		echo "xdebug.client_port=${PHP_XDEBUG_CLIENT_PORT}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_CLOUD_ID+1}" ]; then
		echo "xdebug.cloud_id=${PHP_CLI_XDEBUG_CLOUD_ID}"
	elif [ -n "${PHP_XDEBUG_CLOUD_ID+1}" ]; then
		echo "xdebug.cloud_id=${PHP_XDEBUG_CLOUD_ID}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_COLLECT_ASSIGNMENTS+1}" ]; then
		echo "xdebug.collect_assignments=${PHP_CLI_XDEBUG_COLLECT_ASSIGNMENTS}"
	elif [ -n "${PHP_XDEBUG_COLLECT_ASSIGNMENTS+1}" ]; then
		echo "xdebug.collect_assignments=${PHP_XDEBUG_COLLECT_ASSIGNMENTS}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_COLLECT_INCLUDES+1}" ]; then
		echo "xdebug.collect_includes=${PHP_CLI_XDEBUG_COLLECT_INCLUDES}"
	elif [ -n "${PHP_XDEBUG_COLLECT_INCLUDES+1}" ]; then
		echo "xdebug.collect_includes=${PHP_XDEBUG_COLLECT_INCLUDES}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_COLLECT_PARAMS+1}" ]; then
		echo "xdebug.collect_params=${PHP_CLI_XDEBUG_COLLECT_PARAMS}"
	elif [ -n "${PHP_XDEBUG_COLLECT_PARAMS+1}" ]; then
		echo "xdebug.collect_params=${PHP_XDEBUG_COLLECT_PARAMS}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_COLLECT_RETURN+1}" ]; then
		echo "xdebug.collect_return=${PHP_CLI_XDEBUG_COLLECT_RETURN}"
	elif [ -n "${PHP_XDEBUG_COLLECT_RETURN+1}" ]; then
		echo "xdebug.collect_return=${PHP_XDEBUG_COLLECT_RETURN}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_COLLECT_VARS+1}" ]; then
		echo "xdebug.collect_vars=${PHP_CLI_XDEBUG_COLLECT_VARS}"
	elif [ -n "${PHP_XDEBUG_COLLECT_VARS+1}" ]; then
		echo "xdebug.collect_vars=${PHP_XDEBUG_COLLECT_VARS}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_CONNECT_TIMEOUT_MS+1}" ]; then
		echo "xdebug.connect_timeout_ms=${PHP_CLI_XDEBUG_CONNECT_TIMEOUT_MS}"
	elif [ -n "${PHP_XDEBUG_CONNECT_TIMEOUT_MS+1}" ]; then
		echo "xdebug.connect_timeout_ms=${PHP_XDEBUG_CONNECT_TIMEOUT_MS}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_COVERAGE_ENABLE+1}" ]; then
		echo "xdebug.coverage_enable=${PHP_CLI_XDEBUG_COVERAGE_ENABLE}"
	elif [ -n "${PHP_XDEBUG_COVERAGE_ENABLE+1}" ]; then
		echo "xdebug.coverage_enable=${PHP_XDEBUG_COVERAGE_ENABLE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DEFAULT_ENABLE+1}" ]; then
		echo "xdebug.default_enable=${PHP_CLI_XDEBUG_DEFAULT_ENABLE}"
	elif [ -n "${PHP_XDEBUG_DEFAULT_ENABLE+1}" ]; then
		echo "xdebug.default_enable=${PHP_XDEBUG_DEFAULT_ENABLE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DISCOVER_CLIENT_HOST+1}" ]; then
		echo "xdebug.discover_client_host=${PHP_CLI_XDEBUG_DISCOVER_CLIENT_HOST}"
	elif [ -n "${PHP_XDEBUG_DISCOVER_CLIENT_HOST+1}" ]; then
		echo "xdebug.discover_client_host=${PHP_XDEBUG_DISCOVER_CLIENT_HOST}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_COOKIE+1}" ]; then
		echo "xdebug.dump.COOKIE=${PHP_CLI_XDEBUG_DUMP_COOKIE}"
	elif [ -n "${PHP_XDEBUG_DUMP_COOKIE+1}" ]; then
		echo "xdebug.dump.COOKIE=${PHP_XDEBUG_DUMP_COOKIE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_ENV+1}" ]; then
		echo "xdebug.dump.ENV=${PHP_CLI_XDEBUG_DUMP_ENV}"
	elif [ -n "${PHP_XDEBUG_DUMP_ENV+1}" ]; then
		echo "xdebug.dump.ENV=${PHP_XDEBUG_DUMP_ENV}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_FILES+1}" ]; then
		echo "xdebug.dump.FILES=${PHP_CLI_XDEBUG_DUMP_FILES}"
	elif [ -n "${PHP_XDEBUG_DUMP_FILES+1}" ]; then
		echo "xdebug.dump.FILES=${PHP_XDEBUG_DUMP_FILES}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_GET+1}" ]; then
		echo "xdebug.dump.GET=${PHP_CLI_XDEBUG_DUMP_GET}"
	elif [ -n "${PHP_XDEBUG_DUMP_GET+1}" ]; then
		echo "xdebug.dump.GET=${PHP_XDEBUG_DUMP_GET}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_POST+1}" ]; then
		echo "xdebug.dump.POST=${PHP_CLI_XDEBUG_DUMP_POST}"
	elif [ -n "${PHP_XDEBUG_DUMP_POST+1}" ]; then
		echo "xdebug.dump.POST=${PHP_XDEBUG_DUMP_POST}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_REQUEST+1}" ]; then
		echo "xdebug.dump.REQUEST=${PHP_CLI_XDEBUG_DUMP_REQUEST}"
	elif [ -n "${PHP_XDEBUG_DUMP_REQUEST+1}" ]; then
		echo "xdebug.dump.REQUEST=${PHP_XDEBUG_DUMP_REQUEST}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_SERVER+1}" ]; then
		echo "xdebug.dump.SERVER=${PHP_CLI_XDEBUG_DUMP_SERVER}"
	elif [ -n "${PHP_XDEBUG_DUMP_SERVER+1}" ]; then
		echo "xdebug.dump.SERVER=${PHP_XDEBUG_DUMP_SERVER}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_SESSION+1}" ]; then
		echo "xdebug.dump.SESSION=${PHP_CLI_XDEBUG_DUMP_SESSION}"
	elif [ -n "${PHP_XDEBUG_DUMP_SESSION+1}" ]; then
		echo "xdebug.dump.SESSION=${PHP_XDEBUG_DUMP_SESSION}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_GLOBALS+1}" ]; then
		echo "xdebug.dump_globals=${PHP_CLI_XDEBUG_DUMP_GLOBALS}"
	elif [ -n "${PHP_XDEBUG_DUMP_GLOBALS+1}" ]; then
		echo "xdebug.dump_globals=${PHP_XDEBUG_DUMP_GLOBALS}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_ONCE+1}" ]; then
		echo "xdebug.dump_once=${PHP_CLI_XDEBUG_DUMP_ONCE}"
	elif [ -n "${PHP_XDEBUG_DUMP_ONCE+1}" ]; then
		echo "xdebug.dump_once=${PHP_XDEBUG_DUMP_ONCE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_DUMP_UNDEFINED+1}" ]; then
		echo "xdebug.dump_undefined=${PHP_CLI_XDEBUG_DUMP_UNDEFINED}"
	elif [ -n "${PHP_XDEBUG_DUMP_UNDEFINED+1}" ]; then
		echo "xdebug.dump_undefined=${PHP_XDEBUG_DUMP_UNDEFINED}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_FILE_LINK_FORMAT+1}" ]; then
		echo "xdebug.file_link_format=${PHP_CLI_XDEBUG_FILE_LINK_FORMAT}"
	elif [ -n "${PHP_XDEBUG_FILE_LINK_FORMAT+1}" ]; then
		echo "xdebug.file_link_format=${PHP_XDEBUG_FILE_LINK_FORMAT}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_FILENAME_FORMAT+1}" ]; then
		echo "xdebug.filename_format=${PHP_CLI_XDEBUG_FILENAME_FORMAT}"
	elif [ -n "${PHP_XDEBUG_FILENAME_FORMAT+1}" ]; then
		echo "xdebug.filename_format=${PHP_XDEBUG_FILENAME_FORMAT}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_FORCE_DISPLAY_ERRORS+1}" ]; then
		echo "xdebug.force_display_errors=${PHP_CLI_XDEBUG_FORCE_DISPLAY_ERRORS}"
	elif [ -n "${PHP_XDEBUG_FORCE_DISPLAY_ERRORS+1}" ]; then
		echo "xdebug.force_display_errors=${PHP_XDEBUG_FORCE_DISPLAY_ERRORS}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_FORCE_ERROR_REPORTING+1}" ]; then
		echo "xdebug.force_error_reporting=${PHP_CLI_XDEBUG_FORCE_ERROR_REPORTING}"
	elif [ -n "${PHP_XDEBUG_FORCE_ERROR_REPORTING+1}" ]; then
		echo "xdebug.force_error_reporting=${PHP_XDEBUG_FORCE_ERROR_REPORTING}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_GC_STATS_ENABLE+1}" ]; then
		echo "xdebug.gc_stats_enable=${PHP_CLI_XDEBUG_GC_STATS_ENABLE}"
	elif [ -n "${PHP_XDEBUG_GC_STATS_ENABLE+1}" ]; then
		echo "xdebug.gc_stats_enable=${PHP_XDEBUG_GC_STATS_ENABLE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_GC_STATS_OUTPUT_DIR+1}" ]; then
		echo "xdebug.gc_stats_output_dir=${PHP_CLI_XDEBUG_GC_STATS_OUTPUT_DIR}"
	elif [ -n "${PHP_XDEBUG_GC_STATS_OUTPUT_DIR+1}" ]; then
		echo "xdebug.gc_stats_output_dir=${PHP_XDEBUG_GC_STATS_OUTPUT_DIR}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_GC_STATS_OUTPUT_NAME+1}" ]; then
		echo "xdebug.gc_stats_output_name=${PHP_CLI_XDEBUG_GC_STATS_OUTPUT_NAME}"
	elif [ -n "${PHP_XDEBUG_GC_STATS_OUTPUT_NAME+1}" ]; then
		echo "xdebug.gc_stats_output_name=${PHP_XDEBUG_GC_STATS_OUTPUT_NAME}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_HALT_LEVEL+1}" ]; then
		echo "xdebug.halt_level=${PHP_CLI_XDEBUG_HALT_LEVEL}"
	elif [ -n "${PHP_XDEBUG_HALT_LEVEL+1}" ]; then
		echo "xdebug.halt_level=${PHP_XDEBUG_HALT_LEVEL}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_IDEKEY+1}" ]; then
		echo "xdebug.idekey=${PHP_CLI_XDEBUG_IDEKEY}"
	elif [ -n "${PHP_XDEBUG_IDEKEY+1}" ]; then
		echo "xdebug.idekey=${PHP_XDEBUG_IDEKEY}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_LOG+1}" ]; then
		echo "xdebug.log=${PHP_CLI_XDEBUG_LOG}"
	elif [ -n "${PHP_XDEBUG_LOG+1}" ]; then
		echo "xdebug.log=${PHP_XDEBUG_LOG}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_LOG_LEVEL+1}" ]; then
		echo "xdebug.log_level=${PHP_CLI_XDEBUG_LOG_LEVEL}"
	elif [ -n "${PHP_XDEBUG_LOG_LEVEL+1}" ]; then
		echo "xdebug.log_level=${PHP_XDEBUG_LOG_LEVEL}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_MAX_NESTING_LEVEL+1}" ]; then
		echo "xdebug.max_nesting_level=${PHP_CLI_XDEBUG_MAX_NESTING_LEVEL}"
	elif [ -n "${PHP_XDEBUG_MAX_NESTING_LEVEL+1}" ]; then
		echo "xdebug.max_nesting_level=${PHP_XDEBUG_MAX_NESTING_LEVEL}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_MAX_STACK_FRAMES+1}" ]; then
		echo "xdebug.max_stack_frames=${PHP_CLI_XDEBUG_MAX_STACK_FRAMES}"
	elif [ -n "${PHP_XDEBUG_MAX_STACK_FRAMES+1}" ]; then
		echo "xdebug.max_stack_frames=${PHP_XDEBUG_MAX_STACK_FRAMES}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_MODE+1}" ]; then
		echo "xdebug.mode=${PHP_CLI_XDEBUG_MODE}"
	elif [ -n "${PHP_XDEBUG_MODE+1}" ]; then
		echo "xdebug.mode=${PHP_XDEBUG_MODE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_OUTPUT_DIR+1}" ]; then
		echo "xdebug.output_dir=${PHP_CLI_XDEBUG_OUTPUT_DIR}"
	elif [ -n "${PHP_XDEBUG_OUTPUT_DIR+1}" ]; then
		echo "xdebug.output_dir=${PHP_XDEBUG_OUTPUT_DIR}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_OVERLOAD_VAR_DUMP+1}" ]; then
		echo "xdebug.overload_var_dump=${PHP_CLI_XDEBUG_OVERLOAD_VAR_DUMP}"
	elif [ -n "${PHP_XDEBUG_OVERLOAD_VAR_DUMP+1}" ]; then
		echo "xdebug.overload_var_dump=${PHP_XDEBUG_OVERLOAD_VAR_DUMP}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_PROFILER_APPEND+1}" ]; then
		echo "xdebug.profiler_append=${PHP_CLI_XDEBUG_PROFILER_APPEND}"
	elif [ -n "${PHP_XDEBUG_PROFILER_APPEND+1}" ]; then
		echo "xdebug.profiler_append=${PHP_XDEBUG_PROFILER_APPEND}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_PROFILER_ENABLE+1}" ]; then
		echo "xdebug.profiler_enable=${PHP_CLI_XDEBUG_PROFILER_ENABLE}"
	elif [ -n "${PHP_XDEBUG_PROFILER_ENABLE+1}" ]; then
		echo "xdebug.profiler_enable=${PHP_XDEBUG_PROFILER_ENABLE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_PROFILER_ENABLE_TRIGGER+1}" ]; then
		echo "xdebug.profiler_enable_trigger=${PHP_CLI_XDEBUG_PROFILER_ENABLE_TRIGGER}"
	elif [ -n "${PHP_XDEBUG_PROFILER_ENABLE_TRIGGER+1}" ]; then
		echo "xdebug.profiler_enable_trigger=${PHP_XDEBUG_PROFILER_ENABLE_TRIGGER}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_PROFILER_ENABLE_TRIGGER_VALUE+1}" ]; then
		echo "xdebug.profiler_enable_trigger_value=${PHP_CLI_XDEBUG_PROFILER_ENABLE_TRIGGER_VALUE}"
	elif [ -n "${PHP_XDEBUG_PROFILER_ENABLE_TRIGGER_VALUE+1}" ]; then
		echo "xdebug.profiler_enable_trigger_value=${PHP_XDEBUG_PROFILER_ENABLE_TRIGGER_VALUE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_PROFILER_OUTPUT_DIR+1}" ]; then
		echo "xdebug.profiler_output_dir=${PHP_CLI_XDEBUG_PROFILER_OUTPUT_DIR}"
	elif [ -n "${PHP_XDEBUG_PROFILER_OUTPUT_DIR+1}" ]; then
		echo "xdebug.profiler_output_dir=${PHP_XDEBUG_PROFILER_OUTPUT_DIR}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_PROFILER_OUTPUT_NAME+1}" ]; then
		echo "xdebug.profiler_output_name=${PHP_CLI_XDEBUG_PROFILER_OUTPUT_NAME}"
	elif [ -n "${PHP_XDEBUG_PROFILER_OUTPUT_NAME+1}" ]; then
		echo "xdebug.profiler_output_name=${PHP_XDEBUG_PROFILER_OUTPUT_NAME}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_REMOTE_AUTOSTART+1}" ]; then
		echo "xdebug.remote_autostart=${PHP_CLI_XDEBUG_REMOTE_AUTOSTART}"
	elif [ -n "${PHP_XDEBUG_REMOTE_AUTOSTART+1}" ]; then
		echo "xdebug.remote_autostart=${PHP_XDEBUG_REMOTE_AUTOSTART}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_REMOTE_CONNECT_BACK+1}" ]; then
		echo "xdebug.remote_connect_back=${PHP_CLI_XDEBUG_REMOTE_CONNECT_BACK}"
	elif [ -n "${PHP_XDEBUG_REMOTE_CONNECT_BACK+1}" ]; then
		echo "xdebug.remote_connect_back=${PHP_XDEBUG_REMOTE_CONNECT_BACK}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_REMOTE_ENABLE+1}" ]; then
		echo "xdebug.remote_enable=${PHP_CLI_XDEBUG_REMOTE_ENABLE}"
	elif [ -n "${PHP_XDEBUG_REMOTE_ENABLE+1}" ]; then
		echo "xdebug.remote_enable=${PHP_XDEBUG_REMOTE_ENABLE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_REMOTE_HOST+1}" ]; then
		echo "xdebug.remote_host=${PHP_CLI_XDEBUG_REMOTE_HOST}"
	elif [ -n "${PHP_XDEBUG_REMOTE_HOST+1}" ]; then
		echo "xdebug.remote_host=${PHP_XDEBUG_REMOTE_HOST}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_REMOTE_LOG+1}" ]; then
		echo "xdebug.remote_log=${PHP_CLI_XDEBUG_REMOTE_LOG}"
	elif [ -n "${PHP_XDEBUG_REMOTE_LOG+1}" ]; then
		echo "xdebug.remote_log=${PHP_XDEBUG_REMOTE_LOG}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_REMOTE_LOG_LEVEL+1}" ]; then
		echo "xdebug.remote_log_level=${PHP_CLI_XDEBUG_REMOTE_LOG_LEVEL}"
	elif [ -n "${PHP_XDEBUG_REMOTE_LOG_LEVEL+1}" ]; then
		echo "xdebug.remote_log_level=${PHP_XDEBUG_REMOTE_LOG_LEVEL}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_REMOTE_MODE+1}" ]; then
		echo "xdebug.remote_mode=${PHP_CLI_XDEBUG_REMOTE_MODE}"
	elif [ -n "${PHP_XDEBUG_REMOTE_MODE+1}" ]; then
		echo "xdebug.remote_mode=${PHP_XDEBUG_REMOTE_MODE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_REMOTE_PORT+1}" ]; then
		echo "xdebug.remote_port=${PHP_CLI_XDEBUG_REMOTE_PORT}"
	elif [ -n "${PHP_XDEBUG_REMOTE_PORT+1}" ]; then
		echo "xdebug.remote_port=${PHP_XDEBUG_REMOTE_PORT}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_REMOTE_TIMEOUT+1}" ]; then
		echo "xdebug.remote_timeout=${PHP_CLI_XDEBUG_REMOTE_TIMEOUT}"
	elif [ -n "${PHP_XDEBUG_REMOTE_TIMEOUT+1}" ]; then
		echo "xdebug.remote_timeout=${PHP_XDEBUG_REMOTE_TIMEOUT}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_SCREAM+1}" ]; then
		echo "xdebug.scream=${PHP_CLI_XDEBUG_SCREAM}"
	elif [ -n "${PHP_XDEBUG_SCREAM+1}" ]; then
		echo "xdebug.scream=${PHP_XDEBUG_SCREAM}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_SHOW_ERROR_TRACE+1}" ]; then
		echo "xdebug.show_error_trace=${PHP_CLI_XDEBUG_SHOW_ERROR_TRACE}"
	elif [ -n "${PHP_XDEBUG_SHOW_ERROR_TRACE+1}" ]; then
		echo "xdebug.show_error_trace=${PHP_XDEBUG_SHOW_ERROR_TRACE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_SHOW_EXCEPTION_TRACE+1}" ]; then
		echo "xdebug.show_exception_trace=${PHP_CLI_XDEBUG_SHOW_EXCEPTION_TRACE}"
	elif [ -n "${PHP_XDEBUG_SHOW_EXCEPTION_TRACE+1}" ]; then
		echo "xdebug.show_exception_trace=${PHP_XDEBUG_SHOW_EXCEPTION_TRACE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_SHOW_LOCAL_VARS+1}" ]; then
		echo "xdebug.show_local_vars=${PHP_CLI_XDEBUG_SHOW_LOCAL_VARS}"
	elif [ -n "${PHP_XDEBUG_SHOW_LOCAL_VARS+1}" ]; then
		echo "xdebug.show_local_vars=${PHP_XDEBUG_SHOW_LOCAL_VARS}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_SHOW_MEM_DELTA+1}" ]; then
		echo "xdebug.show_mem_delta=${PHP_CLI_XDEBUG_SHOW_MEM_DELTA}"
	elif [ -n "${PHP_XDEBUG_SHOW_MEM_DELTA+1}" ]; then
		echo "xdebug.show_mem_delta=${PHP_XDEBUG_SHOW_MEM_DELTA}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_START_UPON_ERROR+1}" ]; then
		echo "xdebug.start_upon_error=${PHP_CLI_XDEBUG_START_UPON_ERROR}"
	elif [ -n "${PHP_XDEBUG_START_UPON_ERROR+1}" ]; then
		echo "xdebug.start_upon_error=${PHP_XDEBUG_START_UPON_ERROR}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_START_WITH_REQUEST+1}" ]; then
		echo "xdebug.start_with_request=${PHP_CLI_XDEBUG_START_WITH_REQUEST}"
	elif [ -n "${PHP_XDEBUG_START_WITH_REQUEST+1}" ]; then
		echo "xdebug.start_with_request=${PHP_XDEBUG_START_WITH_REQUEST}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_TRACE_ENABLE_TRIGGER+1}" ]; then
		echo "xdebug.trace_enable_trigger=${PHP_CLI_XDEBUG_TRACE_ENABLE_TRIGGER}"
	elif [ -n "${PHP_XDEBUG_TRACE_ENABLE_TRIGGER+1}" ]; then
		echo "xdebug.trace_enable_trigger=${PHP_XDEBUG_TRACE_ENABLE_TRIGGER}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_TRACE_ENABLE_TRIGGER_VALUE+1}" ]; then
		echo "xdebug.trace_enable_trigger_value=${PHP_CLI_XDEBUG_TRACE_ENABLE_TRIGGER_VALUE}"
	elif [ -n "${PHP_XDEBUG_TRACE_ENABLE_TRIGGER_VALUE+1}" ]; then
		echo "xdebug.trace_enable_trigger_value=${PHP_XDEBUG_TRACE_ENABLE_TRIGGER_VALUE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_TRACE_FORMAT+1}" ]; then
		echo "xdebug.trace_format=${PHP_CLI_XDEBUG_TRACE_FORMAT}"
	elif [ -n "${PHP_XDEBUG_TRACE_FORMAT+1}" ]; then
		echo "xdebug.trace_format=${PHP_XDEBUG_TRACE_FORMAT}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_TRACE_OPTIONS+1}" ]; then
		echo "xdebug.trace_options=${PHP_CLI_XDEBUG_TRACE_OPTIONS}"
	elif [ -n "${PHP_XDEBUG_TRACE_OPTIONS+1}" ]; then
		echo "xdebug.trace_options=${PHP_XDEBUG_TRACE_OPTIONS}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_TRACE_OUTPUT_DIR+1}" ]; then
		echo "xdebug.trace_output_dir=${PHP_CLI_XDEBUG_TRACE_OUTPUT_DIR}"
	elif [ -n "${PHP_XDEBUG_TRACE_OUTPUT_DIR+1}" ]; then
		echo "xdebug.trace_output_dir=${PHP_XDEBUG_TRACE_OUTPUT_DIR}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_TRACE_OUTPUT_NAME+1}" ]; then
		echo "xdebug.trace_output_name=${PHP_CLI_XDEBUG_TRACE_OUTPUT_NAME}"
	elif [ -n "${PHP_XDEBUG_TRACE_OUTPUT_NAME+1}" ]; then
		echo "xdebug.trace_output_name=${PHP_XDEBUG_TRACE_OUTPUT_NAME}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_TRIGGER_VALUE+1}" ]; then
		echo "xdebug.trigger_value=${PHP_CLI_XDEBUG_TRIGGER_VALUE}"
	elif [ -n "${PHP_XDEBUG_TRIGGER_VALUE+1}" ]; then
		echo "xdebug.trigger_value=${PHP_XDEBUG_TRIGGER_VALUE}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_USE_COMPRESSION+1}" ]; then
		echo "xdebug.use_compression=${PHP_CLI_XDEBUG_USE_COMPRESSION}"
	elif [ -n "${PHP_XDEBUG_USE_COMPRESSION+1}" ]; then
		echo "xdebug.use_compression=${PHP_XDEBUG_USE_COMPRESSION}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_VAR_DISPLAY_MAX_CHILDREN+1}" ]; then
		echo "xdebug.var_display_max_children=${PHP_CLI_XDEBUG_VAR_DISPLAY_MAX_CHILDREN}"
	elif [ -n "${PHP_XDEBUG_VAR_DISPLAY_MAX_CHILDREN+1}" ]; then
		echo "xdebug.var_display_max_children=${PHP_XDEBUG_VAR_DISPLAY_MAX_CHILDREN}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_VAR_DISPLAY_MAX_DATA+1}" ]; then
		echo "xdebug.var_display_max_data=${PHP_CLI_XDEBUG_VAR_DISPLAY_MAX_DATA}"
	elif [ -n "${PHP_XDEBUG_VAR_DISPLAY_MAX_DATA+1}" ]; then
		echo "xdebug.var_display_max_data=${PHP_XDEBUG_VAR_DISPLAY_MAX_DATA}"
	fi
	if [ -n "${PHP_CLI_XDEBUG_VAR_DISPLAY_MAX_DEPTH+1}" ]; then
		echo "xdebug.var_display_max_depth=${PHP_CLI_XDEBUG_VAR_DISPLAY_MAX_DEPTH}"
	elif [ -n "${PHP_XDEBUG_VAR_DISPLAY_MAX_DEPTH+1}" ]; then
		echo "xdebug.var_display_max_depth=${PHP_XDEBUG_VAR_DISPLAY_MAX_DEPTH}"
	fi
	if [ -n "${PHP_CLI_XHPROF_COLLECT_ADDITIONAL_INFO+1}" ]; then
		echo "xhprof.collect_additional_info=${PHP_CLI_XHPROF_COLLECT_ADDITIONAL_INFO}"
	elif [ -n "${PHP_XHPROF_COLLECT_ADDITIONAL_INFO+1}" ]; then
		echo "xhprof.collect_additional_info=${PHP_XHPROF_COLLECT_ADDITIONAL_INFO}"
	fi
	if [ -n "${PHP_CLI_XHPROF_OUTPUT_DIR+1}" ]; then
		echo "xhprof.output_dir=${PHP_CLI_XHPROF_OUTPUT_DIR}"
	elif [ -n "${PHP_XHPROF_OUTPUT_DIR+1}" ]; then
		echo "xhprof.output_dir=${PHP_XHPROF_OUTPUT_DIR}"
	fi
	if [ -n "${PHP_CLI_XHPROF_SAMPLING_DEPTH+1}" ]; then
		echo "xhprof.sampling_depth=${PHP_CLI_XHPROF_SAMPLING_DEPTH}"
	elif [ -n "${PHP_XHPROF_SAMPLING_DEPTH+1}" ]; then
		echo "xhprof.sampling_depth=${PHP_XHPROF_SAMPLING_DEPTH}"
	fi
	if [ -n "${PHP_CLI_XHPROF_SAMPLING_INTERVAL+1}" ]; then
		echo "xhprof.sampling_interval=${PHP_CLI_XHPROF_SAMPLING_INTERVAL}"
	elif [ -n "${PHP_XHPROF_SAMPLING_INTERVAL+1}" ]; then
		echo "xhprof.sampling_interval=${PHP_XHPROF_SAMPLING_INTERVAL}"
	fi
	if [ -n "${PHP_CLI_XMLRPC_ERROR_NUMBER+1}" ]; then
		echo "xmlrpc_error_number=${PHP_CLI_XMLRPC_ERROR_NUMBER}"
	elif [ -n "${PHP_XMLRPC_ERROR_NUMBER+1}" ]; then
		echo "xmlrpc_error_number=${PHP_XMLRPC_ERROR_NUMBER}"
	fi
	if [ -n "${PHP_CLI_XMLRPC_ERRORS+1}" ]; then
		echo "xmlrpc_errors=${PHP_CLI_XMLRPC_ERRORS}"
	elif [ -n "${PHP_XMLRPC_ERRORS+1}" ]; then
		echo "xmlrpc_errors=${PHP_XMLRPC_ERRORS}"
	fi
	if [ -n "${PHP_CLI_YAC_COMPRESS_THRESHOLD+1}" ]; then
		echo "yac.compress_threshold=${PHP_CLI_YAC_COMPRESS_THRESHOLD}"
	elif [ -n "${PHP_YAC_COMPRESS_THRESHOLD+1}" ]; then
		echo "yac.compress_threshold=${PHP_YAC_COMPRESS_THRESHOLD}"
	fi
	if [ -n "${PHP_CLI_YAC_DEBUG+1}" ]; then
		echo "yac.debug=${PHP_CLI_YAC_DEBUG}"
	elif [ -n "${PHP_YAC_DEBUG+1}" ]; then
		echo "yac.debug=${PHP_YAC_DEBUG}"
	fi
	if [ -n "${PHP_CLI_YAC_ENABLE+1}" ]; then
		echo "yac.enable=${PHP_CLI_YAC_ENABLE}"
	elif [ -n "${PHP_YAC_ENABLE+1}" ]; then
		echo "yac.enable=${PHP_YAC_ENABLE}"
	fi
	if [ -n "${PHP_CLI_YAC_ENABLE_CLI+1}" ]; then
		echo "yac.enable_cli=${PHP_CLI_YAC_ENABLE_CLI}"
	elif [ -n "${PHP_YAC_ENABLE_CLI+1}" ]; then
		echo "yac.enable_cli=${PHP_YAC_ENABLE_CLI}"
	fi
	if [ -n "${PHP_CLI_YAC_KEYS_MEMORY_SIZE+1}" ]; then
		echo "yac.keys_memory_size=${PHP_CLI_YAC_KEYS_MEMORY_SIZE}"
	elif [ -n "${PHP_YAC_KEYS_MEMORY_SIZE+1}" ]; then
		echo "yac.keys_memory_size=${PHP_YAC_KEYS_MEMORY_SIZE}"
	fi
	if [ -n "${PHP_CLI_YAC_SERIALIZER+1}" ]; then
		echo "yac.serializer=${PHP_CLI_YAC_SERIALIZER}"
	elif [ -n "${PHP_YAC_SERIALIZER+1}" ]; then
		echo "yac.serializer=${PHP_YAC_SERIALIZER}"
	fi
	if [ -n "${PHP_CLI_YAC_VALUES_MEMORY_SIZE+1}" ]; then
		echo "yac.values_memory_size=${PHP_CLI_YAC_VALUES_MEMORY_SIZE}"
	elif [ -n "${PHP_YAC_VALUES_MEMORY_SIZE+1}" ]; then
		echo "yac.values_memory_size=${PHP_YAC_VALUES_MEMORY_SIZE}"
	fi
	if [ -n "${PHP_CLI_YAML_DECODE_BINARY+1}" ]; then
		echo "yaml.decode_binary=${PHP_CLI_YAML_DECODE_BINARY}"
	elif [ -n "${PHP_YAML_DECODE_BINARY+1}" ]; then
		echo "yaml.decode_binary=${PHP_YAML_DECODE_BINARY}"
	fi
	if [ -n "${PHP_CLI_YAML_DECODE_PHP+1}" ]; then
		echo "yaml.decode_php=${PHP_CLI_YAML_DECODE_PHP}"
	elif [ -n "${PHP_YAML_DECODE_PHP+1}" ]; then
		echo "yaml.decode_php=${PHP_YAML_DECODE_PHP}"
	fi
	if [ -n "${PHP_CLI_YAML_DECODE_TIMESTAMP+1}" ]; then
		echo "yaml.decode_timestamp=${PHP_CLI_YAML_DECODE_TIMESTAMP}"
	elif [ -n "${PHP_YAML_DECODE_TIMESTAMP+1}" ]; then
		echo "yaml.decode_timestamp=${PHP_YAML_DECODE_TIMESTAMP}"
	fi
	if [ -n "${PHP_CLI_YAML_OUTPUT_CANONICAL+1}" ]; then
		echo "yaml.output_canonical=${PHP_CLI_YAML_OUTPUT_CANONICAL}"
	elif [ -n "${PHP_YAML_OUTPUT_CANONICAL+1}" ]; then
		echo "yaml.output_canonical=${PHP_YAML_OUTPUT_CANONICAL}"
	fi
	if [ -n "${PHP_CLI_YAML_OUTPUT_INDENT+1}" ]; then
		echo "yaml.output_indent=${PHP_CLI_YAML_OUTPUT_INDENT}"
	elif [ -n "${PHP_YAML_OUTPUT_INDENT+1}" ]; then
		echo "yaml.output_indent=${PHP_YAML_OUTPUT_INDENT}"
	fi
	if [ -n "${PHP_CLI_YAML_OUTPUT_WIDTH+1}" ]; then
		echo "yaml.output_width=${PHP_CLI_YAML_OUTPUT_WIDTH}"
	elif [ -n "${PHP_YAML_OUTPUT_WIDTH+1}" ]; then
		echo "yaml.output_width=${PHP_YAML_OUTPUT_WIDTH}"
	fi
	if [ -n "${PHP_CLI_ZEND_ASSERTIONS+1}" ]; then
		echo "zend.assertions=${PHP_CLI_ZEND_ASSERTIONS}"
	elif [ -n "${PHP_ZEND_ASSERTIONS+1}" ]; then
		echo "zend.assertions=${PHP_ZEND_ASSERTIONS}"
	fi
	if [ -n "${PHP_CLI_ZEND_DETECT_UNICODE+1}" ]; then
		echo "zend.detect_unicode=${PHP_CLI_ZEND_DETECT_UNICODE}"
	elif [ -n "${PHP_ZEND_DETECT_UNICODE+1}" ]; then
		echo "zend.detect_unicode=${PHP_ZEND_DETECT_UNICODE}"
	fi
	if [ -n "${PHP_CLI_ZEND_ENABLE_GC+1}" ]; then
		echo "zend.enable_gc=${PHP_CLI_ZEND_ENABLE_GC}"
	elif [ -n "${PHP_ZEND_ENABLE_GC+1}" ]; then
		echo "zend.enable_gc=${PHP_ZEND_ENABLE_GC}"
	fi
	if [ -n "${PHP_CLI_ZEND_EXCEPTION_IGNORE_ARGS+1}" ]; then
		echo "zend.exception_ignore_args=${PHP_CLI_ZEND_EXCEPTION_IGNORE_ARGS}"
	elif [ -n "${PHP_ZEND_EXCEPTION_IGNORE_ARGS+1}" ]; then
		echo "zend.exception_ignore_args=${PHP_ZEND_EXCEPTION_IGNORE_ARGS}"
	fi
	if [ -n "${PHP_CLI_ZEND_MULTIBYTE+1}" ]; then
		echo "zend.multibyte=${PHP_CLI_ZEND_MULTIBYTE}"
	elif [ -n "${PHP_ZEND_MULTIBYTE+1}" ]; then
		echo "zend.multibyte=${PHP_ZEND_MULTIBYTE}"
	fi
	if [ -n "${PHP_CLI_ZEND_SCRIPT_ENCODING+1}" ]; then
		echo "zend.script_encoding=${PHP_CLI_ZEND_SCRIPT_ENCODING}"
	elif [ -n "${PHP_ZEND_SCRIPT_ENCODING+1}" ]; then
		echo "zend.script_encoding=${PHP_ZEND_SCRIPT_ENCODING}"
	fi
	if [ -n "${PHP_CLI_ZEND_SIGNAL_CHECK+1}" ]; then
		echo "zend.signal_check=${PHP_CLI_ZEND_SIGNAL_CHECK}"
	elif [ -n "${PHP_ZEND_SIGNAL_CHECK+1}" ]; then
		echo "zend.signal_check=${PHP_ZEND_SIGNAL_CHECK}"
	fi
	if [ -n "${PHP_CLI_ZLIB_OUTPUT_COMPRESSION+1}" ]; then
		echo "zlib.output_compression=${PHP_CLI_ZLIB_OUTPUT_COMPRESSION}"
	elif [ -n "${PHP_ZLIB_OUTPUT_COMPRESSION+1}" ]; then
		echo "zlib.output_compression=${PHP_ZLIB_OUTPUT_COMPRESSION}"
	fi
	if [ -n "${PHP_CLI_ZLIB_OUTPUT_COMPRESSION_LEVEL+1}" ]; then
		echo "zlib.output_compression_level=${PHP_CLI_ZLIB_OUTPUT_COMPRESSION_LEVEL}"
	elif [ -n "${PHP_ZLIB_OUTPUT_COMPRESSION_LEVEL+1}" ]; then
		echo "zlib.output_compression_level=${PHP_ZLIB_OUTPUT_COMPRESSION_LEVEL}"
	fi
	if [ -n "${PHP_CLI_ZLIB_OUTPUT_HANDLER+1}" ]; then
		echo "zlib.output_handler=${PHP_CLI_ZLIB_OUTPUT_HANDLER}"
	elif [ -n "${PHP_ZLIB_OUTPUT_HANDLER+1}" ]; then
		echo "zlib.output_handler=${PHP_ZLIB_OUTPUT_HANDLER}"
	fi
) > /etc/php/7.4/cli/conf.d/99-custom.ini
