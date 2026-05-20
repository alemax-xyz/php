BASE=/etc/php/8.4
MODS=$BASE/mods-available
CONF=$BASE/cli/conf.d

if [ \( "${PHP_MODULES_ALL:-1}" != 0 -a -z "${PHP_CLI_MODULES_ALL}" \) -o \( "${PHP_CLI_MODULES_ALL}" != 0 -a -n "${PHP_CLI_MODULES_ALL}" \) ]; then
	[ \( "${PHP_MODULE_IMAGICK:-1}" = 0 -a -z "${PHP_CLI_MODULE_IMAGICK}" \) -o "${PHP_CLI_MODULE_IMAGICK:-1}" = 0 ] || PHP_CLI_MODULE_GMAGICK=0

	[ \( "${PHP_MODULE_SWOOLE:-1}" = 0 -a -z "${PHP_CLI_MODULE_SWOOLE}" \) -o "${PHP_CLI_MODULE_SWOOLE:-1}" = 0 ] || PHP_CLI_MODULE_OPENSWOOLE=0

	if [ \( "${PHP_MODULE_AMQP:-1}" = 0 -a -z "${PHP_CLI_MODULE_AMQP}" \) -o "${PHP_CLI_MODULE_AMQP:-1}" = 0 ]; then
		[ -h "$CONF/20-amqp.ini" ] && suexec rm -f "$CONF/20-amqp.ini"
	else
		[ -e "$CONF/20-amqp.ini" ] || suexec ln -sf "$MODS/amqp.ini" "$CONF/20-amqp.ini"
	fi
	if [ \( "${PHP_MODULE_APCU:-1}" = 0 -a -z "${PHP_CLI_MODULE_APCU}" \) -o "${PHP_CLI_MODULE_APCU:-1}" = 0 ]; then
		[ -h "$CONF/20-apcu.ini" ] && suexec rm -f "$CONF/20-apcu.ini"
	else
		[ -e "$CONF/20-apcu.ini" ] || suexec ln -sf "$MODS/apcu.ini" "$CONF/20-apcu.ini"
	fi
	if [ \( "${PHP_MODULE_AST:-1}" = 0 -a -z "${PHP_CLI_MODULE_AST}" \) -o "${PHP_CLI_MODULE_AST:-1}" = 0 ]; then
		[ -h "$CONF/20-ast.ini" ] && suexec rm -f "$CONF/20-ast.ini"
	else
		[ -e "$CONF/20-ast.ini" ] || suexec ln -sf "$MODS/ast.ini" "$CONF/20-ast.ini"
	fi
	if [ \( "${PHP_MODULE_BCMATH:-1}" = 0 -a -z "${PHP_CLI_MODULE_BCMATH}" \) -o "${PHP_CLI_MODULE_BCMATH:-1}" = 0 ]; then
		[ -h "$CONF/20-bcmath.ini" ] && suexec rm -f "$CONF/20-bcmath.ini"
	else
		[ -e "$CONF/20-bcmath.ini" ] || suexec ln -sf "$MODS/bcmath.ini" "$CONF/20-bcmath.ini"
	fi
	if [ \( "${PHP_MODULE_BZ2:-1}" = 0 -a -z "${PHP_CLI_MODULE_BZ2}" \) -o "${PHP_CLI_MODULE_BZ2:-1}" = 0 ]; then
		[ -h "$CONF/20-bz2.ini" ] && suexec rm -f "$CONF/20-bz2.ini"
	else
		[ -e "$CONF/20-bz2.ini" ] || suexec ln -sf "$MODS/bz2.ini" "$CONF/20-bz2.ini"
	fi
	if [ \( "${PHP_MODULE_CALENDAR:-1}" = 0 -a -z "${PHP_CLI_MODULE_CALENDAR}" \) -o "${PHP_CLI_MODULE_CALENDAR:-1}" = 0 ]; then
		[ -h "$CONF/20-calendar.ini" ] && suexec rm -f "$CONF/20-calendar.ini"
	else
		[ -e "$CONF/20-calendar.ini" ] || suexec ln -sf "$MODS/calendar.ini" "$CONF/20-calendar.ini"
	fi
	if [ \( "${PHP_MODULE_CTYPE:-1}" = 0 -a -z "${PHP_CLI_MODULE_CTYPE}" \) -o "${PHP_CLI_MODULE_CTYPE:-1}" = 0 ]; then
		[ -h "$CONF/20-ctype.ini" ] && suexec rm -f "$CONF/20-ctype.ini"
	else
		[ -e "$CONF/20-ctype.ini" ] || suexec ln -sf "$MODS/ctype.ini" "$CONF/20-ctype.ini"
	fi
	if [ \( "${PHP_MODULE_CURL:-1}" = 0 -a -z "${PHP_CLI_MODULE_CURL}" \) -o "${PHP_CLI_MODULE_CURL:-1}" = 0 ]; then
		[ -h "$CONF/20-curl.ini" ] && suexec rm -f "$CONF/20-curl.ini"
	else
		[ -e "$CONF/20-curl.ini" ] || suexec ln -sf "$MODS/curl.ini" "$CONF/20-curl.ini"
	fi
	if [ \( "${PHP_MODULE_DBA:-1}" = 0 -a -z "${PHP_CLI_MODULE_DBA}" \) -o "${PHP_CLI_MODULE_DBA:-1}" = 0 ]; then
		[ -h "$CONF/20-dba.ini" ] && suexec rm -f "$CONF/20-dba.ini"
	else
		[ -e "$CONF/20-dba.ini" ] || suexec ln -sf "$MODS/dba.ini" "$CONF/20-dba.ini"
	fi
	if [ \( "${PHP_MODULE_DECIMAL:-1}" = 0 -a -z "${PHP_CLI_MODULE_DECIMAL}" \) -o "${PHP_CLI_MODULE_DECIMAL:-1}" = 0 ]; then
		[ -h "$CONF/30-decimal.ini" ] && suexec rm -f "$CONF/30-decimal.ini"
	else
		[ -e "$CONF/30-decimal.ini" ] || suexec ln -sf "$MODS/decimal.ini" "$CONF/30-decimal.ini"
	fi
	if [ \( "${PHP_MODULE_DIO:-1}" = 0 -a -z "${PHP_CLI_MODULE_DIO}" \) -o "${PHP_CLI_MODULE_DIO:-1}" = 0 ]; then
		[ -h "$CONF/20-dio.ini" ] && suexec rm -f "$CONF/20-dio.ini"
	else
		[ -e "$CONF/20-dio.ini" ] || suexec ln -sf "$MODS/dio.ini" "$CONF/20-dio.ini"
	fi
	if [ \( "${PHP_MODULE_DOM:-1}" = 0 -a -z "${PHP_CLI_MODULE_DOM}" \) -o "${PHP_CLI_MODULE_DOM:-1}" = 0 ]; then
		[ -h "$CONF/20-dom.ini" ] && suexec rm -f "$CONF/20-dom.ini"
	else
		[ -e "$CONF/20-dom.ini" ] || suexec ln -sf "$MODS/dom.ini" "$CONF/20-dom.ini"
	fi
	if [ \( "${PHP_MODULE_DS:-1}" = 0 -a -z "${PHP_CLI_MODULE_DS}" \) -o "${PHP_CLI_MODULE_DS:-1}" = 0 ]; then
		[ -h "$CONF/30-ds.ini" ] && suexec rm -f "$CONF/30-ds.ini"
	else
		[ -e "$CONF/30-ds.ini" ] || suexec ln -sf "$MODS/ds.ini" "$CONF/30-ds.ini"
	fi
	if [ \( "${PHP_MODULE_ENCHANT:-1}" = 0 -a -z "${PHP_CLI_MODULE_ENCHANT}" \) -o "${PHP_CLI_MODULE_ENCHANT:-1}" = 0 ]; then
		[ -h "$CONF/20-enchant.ini" ] && suexec rm -f "$CONF/20-enchant.ini"
	else
		[ -e "$CONF/20-enchant.ini" ] || suexec ln -sf "$MODS/enchant.ini" "$CONF/20-enchant.ini"
	fi
	if [ \( "${PHP_MODULE_EXCIMER:-1}" = 0 -a -z "${PHP_CLI_MODULE_EXCIMER}" \) -o "${PHP_CLI_MODULE_EXCIMER:-1}" = 0 ]; then
		[ -h "$CONF/20-excimer.ini" ] && suexec rm -f "$CONF/20-excimer.ini"
	else
		[ -e "$CONF/20-excimer.ini" ] || suexec ln -sf "$MODS/excimer.ini" "$CONF/20-excimer.ini"
	fi
	if [ \( "${PHP_MODULE_EXIF:-1}" = 0 -a -z "${PHP_CLI_MODULE_EXIF}" \) -o "${PHP_CLI_MODULE_EXIF:-1}" = 0 ]; then
		[ -h "$CONF/20-exif.ini" ] && suexec rm -f "$CONF/20-exif.ini"
	else
		[ -e "$CONF/20-exif.ini" ] || suexec ln -sf "$MODS/exif.ini" "$CONF/20-exif.ini"
	fi
	if [ \( "${PHP_MODULE_FFI:-1}" = 0 -a -z "${PHP_CLI_MODULE_FFI}" \) -o "${PHP_CLI_MODULE_FFI:-1}" = 0 ]; then
		[ -h "$CONF/20-ffi.ini" ] && suexec rm -f "$CONF/20-ffi.ini"
	else
		[ -e "$CONF/20-ffi.ini" ] || suexec ln -sf "$MODS/ffi.ini" "$CONF/20-ffi.ini"
	fi
	if [ \( "${PHP_MODULE_FILEINFO:-1}" = 0 -a -z "${PHP_CLI_MODULE_FILEINFO}" \) -o "${PHP_CLI_MODULE_FILEINFO:-1}" = 0 ]; then
		[ -h "$CONF/20-fileinfo.ini" ] && suexec rm -f "$CONF/20-fileinfo.ini"
	else
		[ -e "$CONF/20-fileinfo.ini" ] || suexec ln -sf "$MODS/fileinfo.ini" "$CONF/20-fileinfo.ini"
	fi
	if [ \( "${PHP_MODULE_FTP:-1}" = 0 -a -z "${PHP_CLI_MODULE_FTP}" \) -o "${PHP_CLI_MODULE_FTP:-1}" = 0 ]; then
		[ -h "$CONF/20-ftp.ini" ] && suexec rm -f "$CONF/20-ftp.ini"
	else
		[ -e "$CONF/20-ftp.ini" ] || suexec ln -sf "$MODS/ftp.ini" "$CONF/20-ftp.ini"
	fi
	if [ \( "${PHP_MODULE_GD:-1}" = 0 -a -z "${PHP_CLI_MODULE_GD}" \) -o "${PHP_CLI_MODULE_GD:-1}" = 0 ]; then
		[ -h "$CONF/20-gd.ini" ] && suexec rm -f "$CONF/20-gd.ini"
	else
		[ -e "$CONF/20-gd.ini" ] || suexec ln -sf "$MODS/gd.ini" "$CONF/20-gd.ini"
	fi
	if [ \( "${PHP_MODULE_GEARMAN:-1}" = 0 -a -z "${PHP_CLI_MODULE_GEARMAN}" \) -o "${PHP_CLI_MODULE_GEARMAN:-1}" = 0 ]; then
		[ -h "$CONF/20-gearman.ini" ] && suexec rm -f "$CONF/20-gearman.ini"
	else
		[ -e "$CONF/20-gearman.ini" ] || suexec ln -sf "$MODS/gearman.ini" "$CONF/20-gearman.ini"
	fi
	if [ \( "${PHP_MODULE_GETTEXT:-1}" = 0 -a -z "${PHP_CLI_MODULE_GETTEXT}" \) -o "${PHP_CLI_MODULE_GETTEXT:-1}" = 0 ]; then
		[ -h "$CONF/20-gettext.ini" ] && suexec rm -f "$CONF/20-gettext.ini"
	else
		[ -e "$CONF/20-gettext.ini" ] || suexec ln -sf "$MODS/gettext.ini" "$CONF/20-gettext.ini"
	fi
	if [ \( "${PHP_MODULE_GMAGICK:-1}" = 0 -a -z "${PHP_CLI_MODULE_GMAGICK}" \) -o "${PHP_CLI_MODULE_GMAGICK:-1}" = 0 ]; then
		[ -h "$CONF/20-gmagick.ini" ] && suexec rm -f "$CONF/20-gmagick.ini"
	else
		[ -e "$CONF/20-gmagick.ini" ] || suexec ln -sf "$MODS/gmagick.ini" "$CONF/20-gmagick.ini"
	fi
	if [ \( "${PHP_MODULE_GMP:-1}" = 0 -a -z "${PHP_CLI_MODULE_GMP}" \) -o "${PHP_CLI_MODULE_GMP:-1}" = 0 ]; then
		[ -h "$CONF/20-gmp.ini" ] && suexec rm -f "$CONF/20-gmp.ini"
	else
		[ -e "$CONF/20-gmp.ini" ] || suexec ln -sf "$MODS/gmp.ini" "$CONF/20-gmp.ini"
	fi
	if [ \( "${PHP_MODULE_GNUPG:-1}" = 0 -a -z "${PHP_CLI_MODULE_GNUPG}" \) -o "${PHP_CLI_MODULE_GNUPG:-1}" = 0 ]; then
		[ -h "$CONF/20-gnupg.ini" ] && suexec rm -f "$CONF/20-gnupg.ini"
	else
		[ -e "$CONF/20-gnupg.ini" ] || suexec ln -sf "$MODS/gnupg.ini" "$CONF/20-gnupg.ini"
	fi
	if [ \( "${PHP_MODULE_GRPC:-1}" = 0 -a -z "${PHP_CLI_MODULE_GRPC}" \) -o "${PHP_CLI_MODULE_GRPC:-1}" = 0 ]; then
		[ -h "$CONF/30-grpc.ini" ] && suexec rm -f "$CONF/30-grpc.ini"
	else
		[ -e "$CONF/30-grpc.ini" ] || suexec ln -sf "$MODS/grpc.ini" "$CONF/30-grpc.ini"
	fi
	if [ \( "${PHP_MODULE_HTTP:-1}" = 0 -a -z "${PHP_CLI_MODULE_HTTP}" \) -o "${PHP_CLI_MODULE_HTTP:-1}" = 0 ]; then
		[ -h "$CONF/25-http.ini" ] && suexec rm -f "$CONF/25-http.ini"
	else
		[ -e "$CONF/25-http.ini" ] || suexec ln -sf "$MODS/http.ini" "$CONF/25-http.ini"
	fi
	if [ \( "${PHP_MODULE_ICONV:-1}" = 0 -a -z "${PHP_CLI_MODULE_ICONV}" \) -o "${PHP_CLI_MODULE_ICONV:-1}" = 0 ]; then
		[ -h "$CONF/20-iconv.ini" ] && suexec rm -f "$CONF/20-iconv.ini"
	else
		[ -e "$CONF/20-iconv.ini" ] || suexec ln -sf "$MODS/iconv.ini" "$CONF/20-iconv.ini"
	fi
	if [ \( "${PHP_MODULE_IGBINARY:-1}" = 0 -a -z "${PHP_CLI_MODULE_IGBINARY}" \) -o "${PHP_CLI_MODULE_IGBINARY:-1}" = 0 ]; then
		[ -h "$CONF/20-igbinary.ini" ] && suexec rm -f "$CONF/20-igbinary.ini"
	else
		[ -e "$CONF/20-igbinary.ini" ] || suexec ln -sf "$MODS/igbinary.ini" "$CONF/20-igbinary.ini"
	fi
	if [ \( "${PHP_MODULE_IMAGICK:-1}" = 0 -a -z "${PHP_CLI_MODULE_IMAGICK}" \) -o "${PHP_CLI_MODULE_IMAGICK:-1}" = 0 ]; then
		[ -h "$CONF/20-imagick.ini" ] && suexec rm -f "$CONF/20-imagick.ini"
	else
		[ -e "$CONF/20-imagick.ini" ] || suexec ln -sf "$MODS/imagick.ini" "$CONF/20-imagick.ini"
	fi
	if [ \( "${PHP_MODULE_IMAP:-1}" = 0 -a -z "${PHP_CLI_MODULE_IMAP}" \) -o "${PHP_CLI_MODULE_IMAP:-1}" = 0 ]; then
		[ -h "$CONF/20-imap.ini" ] && suexec rm -f "$CONF/20-imap.ini"
	else
		[ -e "$CONF/20-imap.ini" ] || suexec ln -sf "$MODS/imap.ini" "$CONF/20-imap.ini"
	fi
	if [ \( "${PHP_MODULE_INOTIFY:-1}" = 0 -a -z "${PHP_CLI_MODULE_INOTIFY}" \) -o "${PHP_CLI_MODULE_INOTIFY:-1}" = 0 ]; then
		[ -h "$CONF/30-inotify.ini" ] && suexec rm -f "$CONF/30-inotify.ini"
	else
		[ -e "$CONF/30-inotify.ini" ] || suexec ln -sf "$MODS/inotify.ini" "$CONF/30-inotify.ini"
	fi
	if [ \( "${PHP_MODULE_INTL:-1}" = 0 -a -z "${PHP_CLI_MODULE_INTL}" \) -o "${PHP_CLI_MODULE_INTL:-1}" = 0 ]; then
		[ -h "$CONF/20-intl.ini" ] && suexec rm -f "$CONF/20-intl.ini"
	else
		[ -e "$CONF/20-intl.ini" ] || suexec ln -sf "$MODS/intl.ini" "$CONF/20-intl.ini"
	fi
	if [ \( "${PHP_MODULE_LDAP:-1}" = 0 -a -z "${PHP_CLI_MODULE_LDAP}" \) -o "${PHP_CLI_MODULE_LDAP:-1}" = 0 ]; then
		[ -h "$CONF/20-ldap.ini" ] && suexec rm -f "$CONF/20-ldap.ini"
	else
		[ -e "$CONF/20-ldap.ini" ] || suexec ln -sf "$MODS/ldap.ini" "$CONF/20-ldap.ini"
	fi
	if [ \( "${PHP_MODULE_LIBVIRT_PHP:-1}" = 0 -a -z "${PHP_CLI_MODULE_LIBVIRT_PHP}" \) -o "${PHP_CLI_MODULE_LIBVIRT_PHP:-1}" = 0 ]; then
		[ -h "$CONF/40-libvirt-php.ini" ] && suexec rm -f "$CONF/40-libvirt-php.ini"
	else
		[ -e "$CONF/40-libvirt-php.ini" ] || suexec ln -sf "$MODS/libvirt-php.ini" "$CONF/40-libvirt-php.ini"
	fi
	if [ \( "${PHP_MODULE_LZ4:-1}" = 0 -a -z "${PHP_CLI_MODULE_LZ4}" \) -o "${PHP_CLI_MODULE_LZ4:-1}" = 0 ]; then
		[ -h "$CONF/20-lz4.ini" ] && suexec rm -f "$CONF/20-lz4.ini"
	else
		[ -e "$CONF/20-lz4.ini" ] || suexec ln -sf "$MODS/lz4.ini" "$CONF/20-lz4.ini"
	fi
	if [ \( "${PHP_MODULE_MAILPARSE:-1}" = 0 -a -z "${PHP_CLI_MODULE_MAILPARSE}" \) -o "${PHP_CLI_MODULE_MAILPARSE:-1}" = 0 ]; then
		[ -h "$CONF/25-mailparse.ini" ] && suexec rm -f "$CONF/25-mailparse.ini"
	else
		[ -e "$CONF/25-mailparse.ini" ] || suexec ln -sf "$MODS/mailparse.ini" "$CONF/25-mailparse.ini"
	fi
	if [ \( "${PHP_MODULE_MAXMINDDB:-1}" = 0 -a -z "${PHP_CLI_MODULE_MAXMINDDB}" \) -o "${PHP_CLI_MODULE_MAXMINDDB:-1}" = 0 ]; then
		[ -h "$CONF/30-maxminddb.ini" ] && suexec rm -f "$CONF/30-maxminddb.ini"
	else
		[ -e "$CONF/30-maxminddb.ini" ] || suexec ln -sf "$MODS/maxminddb.ini" "$CONF/30-maxminddb.ini"
	fi
	if [ \( "${PHP_MODULE_MBSTRING:-1}" = 0 -a -z "${PHP_CLI_MODULE_MBSTRING}" \) -o "${PHP_CLI_MODULE_MBSTRING:-1}" = 0 ]; then
		[ -h "$CONF/20-mbstring.ini" ] && suexec rm -f "$CONF/20-mbstring.ini"
	else
		[ -e "$CONF/20-mbstring.ini" ] || suexec ln -sf "$MODS/mbstring.ini" "$CONF/20-mbstring.ini"
	fi
	if [ \( "${PHP_MODULE_MCRYPT:-1}" = 0 -a -z "${PHP_CLI_MODULE_MCRYPT}" \) -o "${PHP_CLI_MODULE_MCRYPT:-1}" = 0 ]; then
		[ -h "$CONF/20-mcrypt.ini" ] && suexec rm -f "$CONF/20-mcrypt.ini"
	else
		[ -e "$CONF/20-mcrypt.ini" ] || suexec ln -sf "$MODS/mcrypt.ini" "$CONF/20-mcrypt.ini"
	fi
	if [ \( "${PHP_MODULE_MEMCACHE:-1}" = 0 -a -z "${PHP_CLI_MODULE_MEMCACHE}" \) -o "${PHP_CLI_MODULE_MEMCACHE:-1}" = 0 ]; then
		[ -h "$CONF/20-memcache.ini" ] && suexec rm -f "$CONF/20-memcache.ini"
	else
		[ -e "$CONF/20-memcache.ini" ] || suexec ln -sf "$MODS/memcache.ini" "$CONF/20-memcache.ini"
	fi
	if [ \( "${PHP_MODULE_MEMCACHED:-1}" = 0 -a -z "${PHP_CLI_MODULE_MEMCACHED}" \) -o "${PHP_CLI_MODULE_MEMCACHED:-1}" = 0 ]; then
		[ -h "$CONF/25-memcached.ini" ] && suexec rm -f "$CONF/25-memcached.ini"
	else
		[ -e "$CONF/25-memcached.ini" ] || suexec ln -sf "$MODS/memcached.ini" "$CONF/25-memcached.ini"
	fi
	if [ \( "${PHP_MODULE_MONGODB:-1}" = 0 -a -z "${PHP_CLI_MODULE_MONGODB}" \) -o "${PHP_CLI_MODULE_MONGODB:-1}" = 0 ]; then
		[ -h "$CONF/20-mongodb.ini" ] && suexec rm -f "$CONF/20-mongodb.ini"
	else
		[ -e "$CONF/20-mongodb.ini" ] || suexec ln -sf "$MODS/mongodb.ini" "$CONF/20-mongodb.ini"
	fi
	if [ \( "${PHP_MODULE_MSGPACK:-1}" = 0 -a -z "${PHP_CLI_MODULE_MSGPACK}" \) -o "${PHP_CLI_MODULE_MSGPACK:-1}" = 0 ]; then
		[ -h "$CONF/20-msgpack.ini" ] && suexec rm -f "$CONF/20-msgpack.ini"
	else
		[ -e "$CONF/20-msgpack.ini" ] || suexec ln -sf "$MODS/msgpack.ini" "$CONF/20-msgpack.ini"
	fi
	if [ \( "${PHP_MODULE_MYSQLI:-1}" = 0 -a -z "${PHP_CLI_MODULE_MYSQLI}" \) -o "${PHP_CLI_MODULE_MYSQLI:-1}" = 0 ]; then
		[ -h "$CONF/20-mysqli.ini" ] && suexec rm -f "$CONF/20-mysqli.ini"
	else
		[ -e "$CONF/20-mysqli.ini" ] || suexec ln -sf "$MODS/mysqli.ini" "$CONF/20-mysqli.ini"
	fi
	if [ \( "${PHP_MODULE_MYSQLND:-1}" = 0 -a -z "${PHP_CLI_MODULE_MYSQLND}" \) -o "${PHP_CLI_MODULE_MYSQLND:-1}" = 0 ]; then
		[ -h "$CONF/10-mysqlnd.ini" ] && suexec rm -f "$CONF/10-mysqlnd.ini"
	else
		[ -e "$CONF/10-mysqlnd.ini" ] || suexec ln -sf "$MODS/mysqlnd.ini" "$CONF/10-mysqlnd.ini"
	fi
	if [ \( "${PHP_MODULE_OAUTH:-1}" = 0 -a -z "${PHP_CLI_MODULE_OAUTH}" \) -o "${PHP_CLI_MODULE_OAUTH:-1}" = 0 ]; then
		[ -h "$CONF/20-oauth.ini" ] && suexec rm -f "$CONF/20-oauth.ini"
	else
		[ -e "$CONF/20-oauth.ini" ] || suexec ln -sf "$MODS/oauth.ini" "$CONF/20-oauth.ini"
	fi
	if [ \( "${PHP_MODULE_ODBC:-1}" = 0 -a -z "${PHP_CLI_MODULE_ODBC}" \) -o "${PHP_CLI_MODULE_ODBC:-1}" = 0 ]; then
		[ -h "$CONF/20-odbc.ini" ] && suexec rm -f "$CONF/20-odbc.ini"
	else
		[ -e "$CONF/20-odbc.ini" ] || suexec ln -sf "$MODS/odbc.ini" "$CONF/20-odbc.ini"
	fi
	if [ \( "${PHP_MODULE_OPCACHE:-1}" = 0 -a -z "${PHP_CLI_MODULE_OPCACHE}" \) -o "${PHP_CLI_MODULE_OPCACHE:-1}" = 0 ]; then
		[ -h "$CONF/10-opcache.ini" ] && suexec rm -f "$CONF/10-opcache.ini"
	else
		[ -e "$CONF/10-opcache.ini" ] || suexec ln -sf "$MODS/opcache.ini" "$CONF/10-opcache.ini"
	fi
	if [ \( "${PHP_MODULE_OPENSWOOLE:-1}" = 0 -a -z "${PHP_CLI_MODULE_OPENSWOOLE}" \) -o "${PHP_CLI_MODULE_OPENSWOOLE:-1}" = 0 ]; then
		[ -h "$CONF/25-openswoole.ini" ] && suexec rm -f "$CONF/25-openswoole.ini"
	else
		[ -e "$CONF/25-openswoole.ini" ] || suexec ln -sf "$MODS/openswoole.ini" "$CONF/25-openswoole.ini"
	fi
	if [ \( "${PHP_MODULE_OPENTELEMETRY:-1}" = 0 -a -z "${PHP_CLI_MODULE_OPENTELEMETRY}" \) -o "${PHP_CLI_MODULE_OPENTELEMETRY:-1}" = 0 ]; then
		[ -h "$CONF/20-opentelemetry.ini" ] && suexec rm -f "$CONF/20-opentelemetry.ini"
	else
		[ -e "$CONF/20-opentelemetry.ini" ] || suexec ln -sf "$MODS/opentelemetry.ini" "$CONF/20-opentelemetry.ini"
	fi
	if [ \( "${PHP_MODULE_PCOV:-1}" = 0 -a -z "${PHP_CLI_MODULE_PCOV}" \) -o "${PHP_CLI_MODULE_PCOV:-1}" = 0 ]; then
		[ -h "$CONF/20-pcov.ini" ] && suexec rm -f "$CONF/20-pcov.ini"
	else
		[ -e "$CONF/20-pcov.ini" ] || suexec ln -sf "$MODS/pcov.ini" "$CONF/20-pcov.ini"
	fi
	if [ \( "${PHP_MODULE_PDO:-1}" = 0 -a -z "${PHP_CLI_MODULE_PDO}" \) -o "${PHP_CLI_MODULE_PDO:-1}" = 0 ]; then
		[ -h "$CONF/10-pdo.ini" ] && suexec rm -f "$CONF/10-pdo.ini"
	else
		[ -e "$CONF/10-pdo.ini" ] || suexec ln -sf "$MODS/pdo.ini" "$CONF/10-pdo.ini"
	fi
	if [ \( "${PHP_MODULE_PDO_DBLIB:-1}" = 0 -a -z "${PHP_CLI_MODULE_PDO_DBLIB}" \) -o "${PHP_CLI_MODULE_PDO_DBLIB:-1}" = 0 ]; then
		[ -h "$CONF/20-pdo_dblib.ini" ] && suexec rm -f "$CONF/20-pdo_dblib.ini"
	else
		[ -e "$CONF/20-pdo_dblib.ini" ] || suexec ln -sf "$MODS/pdo_dblib.ini" "$CONF/20-pdo_dblib.ini"
	fi
	if [ \( "${PHP_MODULE_PDO_FIREBIRD:-1}" = 0 -a -z "${PHP_CLI_MODULE_PDO_FIREBIRD}" \) -o "${PHP_CLI_MODULE_PDO_FIREBIRD:-1}" = 0 ]; then
		[ -h "$CONF/20-pdo_firebird.ini" ] && suexec rm -f "$CONF/20-pdo_firebird.ini"
	else
		[ -e "$CONF/20-pdo_firebird.ini" ] || suexec ln -sf "$MODS/pdo_firebird.ini" "$CONF/20-pdo_firebird.ini"
	fi
	if [ \( "${PHP_MODULE_PDO_MYSQL:-1}" = 0 -a -z "${PHP_CLI_MODULE_PDO_MYSQL}" \) -o "${PHP_CLI_MODULE_PDO_MYSQL:-1}" = 0 ]; then
		[ -h "$CONF/20-pdo_mysql.ini" ] && suexec rm -f "$CONF/20-pdo_mysql.ini"
	else
		[ -e "$CONF/20-pdo_mysql.ini" ] || suexec ln -sf "$MODS/pdo_mysql.ini" "$CONF/20-pdo_mysql.ini"
	fi
	if [ \( "${PHP_MODULE_PDO_ODBC:-1}" = 0 -a -z "${PHP_CLI_MODULE_PDO_ODBC}" \) -o "${PHP_CLI_MODULE_PDO_ODBC:-1}" = 0 ]; then
		[ -h "$CONF/20-pdo_odbc.ini" ] && suexec rm -f "$CONF/20-pdo_odbc.ini"
	else
		[ -e "$CONF/20-pdo_odbc.ini" ] || suexec ln -sf "$MODS/pdo_odbc.ini" "$CONF/20-pdo_odbc.ini"
	fi
	if [ \( "${PHP_MODULE_PDO_PGSQL:-1}" = 0 -a -z "${PHP_CLI_MODULE_PDO_PGSQL}" \) -o "${PHP_CLI_MODULE_PDO_PGSQL:-1}" = 0 ]; then
		[ -h "$CONF/20-pdo_pgsql.ini" ] && suexec rm -f "$CONF/20-pdo_pgsql.ini"
	else
		[ -e "$CONF/20-pdo_pgsql.ini" ] || suexec ln -sf "$MODS/pdo_pgsql.ini" "$CONF/20-pdo_pgsql.ini"
	fi
	if [ \( "${PHP_MODULE_PDO_SQLITE:-1}" = 0 -a -z "${PHP_CLI_MODULE_PDO_SQLITE}" \) -o "${PHP_CLI_MODULE_PDO_SQLITE:-1}" = 0 ]; then
		[ -h "$CONF/20-pdo_sqlite.ini" ] && suexec rm -f "$CONF/20-pdo_sqlite.ini"
	else
		[ -e "$CONF/20-pdo_sqlite.ini" ] || suexec ln -sf "$MODS/pdo_sqlite.ini" "$CONF/20-pdo_sqlite.ini"
	fi
	if [ \( "${PHP_MODULE_PGSQL:-1}" = 0 -a -z "${PHP_CLI_MODULE_PGSQL}" \) -o "${PHP_CLI_MODULE_PGSQL:-1}" = 0 ]; then
		[ -h "$CONF/20-pgsql.ini" ] && suexec rm -f "$CONF/20-pgsql.ini"
	else
		[ -e "$CONF/20-pgsql.ini" ] || suexec ln -sf "$MODS/pgsql.ini" "$CONF/20-pgsql.ini"
	fi
	if [ \( "${PHP_MODULE_PHALCON:-1}" = 0 -a -z "${PHP_CLI_MODULE_PHALCON}" \) -o "${PHP_CLI_MODULE_PHALCON:-1}" = 0 ]; then
		[ -h "$CONF/35-phalcon.ini" ] && suexec rm -f "$CONF/35-phalcon.ini"
	else
		[ -e "$CONF/35-phalcon.ini" ] || suexec ln -sf "$MODS/phalcon.ini" "$CONF/35-phalcon.ini"
	fi
	if [ \( "${PHP_MODULE_PHAR:-1}" = 0 -a -z "${PHP_CLI_MODULE_PHAR}" \) -o "${PHP_CLI_MODULE_PHAR:-1}" = 0 ]; then
		[ -h "$CONF/20-phar.ini" ] && suexec rm -f "$CONF/20-phar.ini"
	else
		[ -e "$CONF/20-phar.ini" ] || suexec ln -sf "$MODS/phar.ini" "$CONF/20-phar.ini"
	fi
	if [ \( "${PHP_MODULE_POSIX:-1}" = 0 -a -z "${PHP_CLI_MODULE_POSIX}" \) -o "${PHP_CLI_MODULE_POSIX:-1}" = 0 ]; then
		[ -h "$CONF/20-posix.ini" ] && suexec rm -f "$CONF/20-posix.ini"
	else
		[ -e "$CONF/20-posix.ini" ] || suexec ln -sf "$MODS/posix.ini" "$CONF/20-posix.ini"
	fi
	if [ \( "${PHP_MODULE_PQ:-1}" = 0 -a -z "${PHP_CLI_MODULE_PQ}" \) -o "${PHP_CLI_MODULE_PQ:-1}" = 0 ]; then
		[ -h "$CONF/25-pq.ini" ] && suexec rm -f "$CONF/25-pq.ini"
	else
		[ -e "$CONF/25-pq.ini" ] || suexec ln -sf "$MODS/pq.ini" "$CONF/25-pq.ini"
	fi
	if [ \( "${PHP_MODULE_PROTOBUF:-1}" = 0 -a -z "${PHP_CLI_MODULE_PROTOBUF}" \) -o "${PHP_CLI_MODULE_PROTOBUF:-1}" = 0 ]; then
		[ -h "$CONF/30-protobuf.ini" ] && suexec rm -f "$CONF/30-protobuf.ini"
	else
		[ -e "$CONF/30-protobuf.ini" ] || suexec ln -sf "$MODS/protobuf.ini" "$CONF/30-protobuf.ini"
	fi
	if [ \( "${PHP_MODULE_PS:-1}" = 0 -a -z "${PHP_CLI_MODULE_PS}" \) -o "${PHP_CLI_MODULE_PS:-1}" = 0 ]; then
		[ -h "$CONF/20-ps.ini" ] && suexec rm -f "$CONF/20-ps.ini"
	else
		[ -e "$CONF/20-ps.ini" ] || suexec ln -sf "$MODS/ps.ini" "$CONF/20-ps.ini"
	fi
	if [ \( "${PHP_MODULE_PSPELL:-1}" = 0 -a -z "${PHP_CLI_MODULE_PSPELL}" \) -o "${PHP_CLI_MODULE_PSPELL:-1}" = 0 ]; then
		[ -h "$CONF/20-pspell.ini" ] && suexec rm -f "$CONF/20-pspell.ini"
	else
		[ -e "$CONF/20-pspell.ini" ] || suexec ln -sf "$MODS/pspell.ini" "$CONF/20-pspell.ini"
	fi
	if [ \( "${PHP_MODULE_PSR:-1}" = 0 -a -z "${PHP_CLI_MODULE_PSR}" \) -o "${PHP_CLI_MODULE_PSR:-1}" = 0 ]; then
		[ -h "$CONF/15-psr.ini" ] && suexec rm -f "$CONF/15-psr.ini"
	else
		[ -e "$CONF/15-psr.ini" ] || suexec ln -sf "$MODS/psr.ini" "$CONF/15-psr.ini"
	fi
	if [ \( "${PHP_MODULE_RAPHF:-1}" = 0 -a -z "${PHP_CLI_MODULE_RAPHF}" \) -o "${PHP_CLI_MODULE_RAPHF:-1}" = 0 ]; then
		[ -h "$CONF/20-raphf.ini" ] && suexec rm -f "$CONF/20-raphf.ini"
	else
		[ -e "$CONF/20-raphf.ini" ] || suexec ln -sf "$MODS/raphf.ini" "$CONF/20-raphf.ini"
	fi
	if [ \( "${PHP_MODULE_RDKAFKA:-1}" = 0 -a -z "${PHP_CLI_MODULE_RDKAFKA}" \) -o "${PHP_CLI_MODULE_RDKAFKA:-1}" = 0 ]; then
		[ -h "$CONF/30-rdkafka.ini" ] && suexec rm -f "$CONF/30-rdkafka.ini"
	else
		[ -e "$CONF/30-rdkafka.ini" ] || suexec ln -sf "$MODS/rdkafka.ini" "$CONF/30-rdkafka.ini"
	fi
	if [ \( "${PHP_MODULE_READLINE:-1}" = 0 -a -z "${PHP_CLI_MODULE_READLINE}" \) -o "${PHP_CLI_MODULE_READLINE:-1}" = 0 ]; then
		[ -h "$CONF/20-readline.ini" ] && suexec rm -f "$CONF/20-readline.ini"
	else
		[ -e "$CONF/20-readline.ini" ] || suexec ln -sf "$MODS/readline.ini" "$CONF/20-readline.ini"
	fi
	if [ \( "${PHP_MODULE_REDIS:-1}" = 0 -a -z "${PHP_CLI_MODULE_REDIS}" \) -o "${PHP_CLI_MODULE_REDIS:-1}" = 0 ]; then
		[ -h "$CONF/25-redis.ini" ] && suexec rm -f "$CONF/25-redis.ini"
	else
		[ -e "$CONF/25-redis.ini" ] || suexec ln -sf "$MODS/redis.ini" "$CONF/25-redis.ini"
	fi
	if [ \( "${PHP_MODULE_RRD:-1}" = 0 -a -z "${PHP_CLI_MODULE_RRD}" \) -o "${PHP_CLI_MODULE_RRD:-1}" = 0 ]; then
		[ -h "$CONF/20-rrd.ini" ] && suexec rm -f "$CONF/20-rrd.ini"
	else
		[ -e "$CONF/20-rrd.ini" ] || suexec ln -sf "$MODS/rrd.ini" "$CONF/20-rrd.ini"
	fi
	if [ \( "${PHP_MODULE_SHMOP:-1}" = 0 -a -z "${PHP_CLI_MODULE_SHMOP}" \) -o "${PHP_CLI_MODULE_SHMOP:-1}" = 0 ]; then
		[ -h "$CONF/20-shmop.ini" ] && suexec rm -f "$CONF/20-shmop.ini"
	else
		[ -e "$CONF/20-shmop.ini" ] || suexec ln -sf "$MODS/shmop.ini" "$CONF/20-shmop.ini"
	fi
	if [ \( "${PHP_MODULE_SIMPLEXML:-1}" = 0 -a -z "${PHP_CLI_MODULE_SIMPLEXML}" \) -o "${PHP_CLI_MODULE_SIMPLEXML:-1}" = 0 ]; then
		[ -h "$CONF/20-simplexml.ini" ] && suexec rm -f "$CONF/20-simplexml.ini"
	else
		[ -e "$CONF/20-simplexml.ini" ] || suexec ln -sf "$MODS/simplexml.ini" "$CONF/20-simplexml.ini"
	fi
	if [ \( "${PHP_MODULE_SMBCLIENT:-1}" = 0 -a -z "${PHP_CLI_MODULE_SMBCLIENT}" \) -o "${PHP_CLI_MODULE_SMBCLIENT:-1}" = 0 ]; then
		[ -h "$CONF/20-smbclient.ini" ] && suexec rm -f "$CONF/20-smbclient.ini"
	else
		[ -e "$CONF/20-smbclient.ini" ] || suexec ln -sf "$MODS/smbclient.ini" "$CONF/20-smbclient.ini"
	fi
	if [ \( "${PHP_MODULE_SNMP:-1}" = 0 -a -z "${PHP_CLI_MODULE_SNMP}" \) -o "${PHP_CLI_MODULE_SNMP:-1}" = 0 ]; then
		[ -h "$CONF/20-snmp.ini" ] && suexec rm -f "$CONF/20-snmp.ini"
	else
		[ -e "$CONF/20-snmp.ini" ] || suexec ln -sf "$MODS/snmp.ini" "$CONF/20-snmp.ini"
	fi
	if [ \( "${PHP_MODULE_SOAP:-1}" = 0 -a -z "${PHP_CLI_MODULE_SOAP}" \) -o "${PHP_CLI_MODULE_SOAP:-1}" = 0 ]; then
		[ -h "$CONF/20-soap.ini" ] && suexec rm -f "$CONF/20-soap.ini"
	else
		[ -e "$CONF/20-soap.ini" ] || suexec ln -sf "$MODS/soap.ini" "$CONF/20-soap.ini"
	fi
	if [ \( "${PHP_MODULE_SOCKETS:-1}" = 0 -a -z "${PHP_CLI_MODULE_SOCKETS}" \) -o "${PHP_CLI_MODULE_SOCKETS:-1}" = 0 ]; then
		[ -h "$CONF/20-sockets.ini" ] && suexec rm -f "$CONF/20-sockets.ini"
	else
		[ -e "$CONF/20-sockets.ini" ] || suexec ln -sf "$MODS/sockets.ini" "$CONF/20-sockets.ini"
	fi
	if [ \( "${PHP_MODULE_SOLR:-1}" = 0 -a -z "${PHP_CLI_MODULE_SOLR}" \) -o "${PHP_CLI_MODULE_SOLR:-1}" = 0 ]; then
		[ -h "$CONF/20-solr.ini" ] && suexec rm -f "$CONF/20-solr.ini"
	else
		[ -e "$CONF/20-solr.ini" ] || suexec ln -sf "$MODS/solr.ini" "$CONF/20-solr.ini"
	fi
	if [ \( "${PHP_MODULE_SQLITE3:-1}" = 0 -a -z "${PHP_CLI_MODULE_SQLITE3}" \) -o "${PHP_CLI_MODULE_SQLITE3:-1}" = 0 ]; then
		[ -h "$CONF/20-sqlite3.ini" ] && suexec rm -f "$CONF/20-sqlite3.ini"
	else
		[ -e "$CONF/20-sqlite3.ini" ] || suexec ln -sf "$MODS/sqlite3.ini" "$CONF/20-sqlite3.ini"
	fi
	if [ \( "${PHP_MODULE_SSH2:-1}" = 0 -a -z "${PHP_CLI_MODULE_SSH2}" \) -o "${PHP_CLI_MODULE_SSH2:-1}" = 0 ]; then
		[ -h "$CONF/20-ssh2.ini" ] && suexec rm -f "$CONF/20-ssh2.ini"
	else
		[ -e "$CONF/20-ssh2.ini" ] || suexec ln -sf "$MODS/ssh2.ini" "$CONF/20-ssh2.ini"
	fi
	if [ \( "${PHP_MODULE_STOMP:-1}" = 0 -a -z "${PHP_CLI_MODULE_STOMP}" \) -o "${PHP_CLI_MODULE_STOMP:-1}" = 0 ]; then
		[ -h "$CONF/20-stomp.ini" ] && suexec rm -f "$CONF/20-stomp.ini"
	else
		[ -e "$CONF/20-stomp.ini" ] || suexec ln -sf "$MODS/stomp.ini" "$CONF/20-stomp.ini"
	fi
	if [ \( "${PHP_MODULE_SWOOLE:-1}" = 0 -a -z "${PHP_CLI_MODULE_SWOOLE}" \) -o "${PHP_CLI_MODULE_SWOOLE:-1}" = 0 ]; then
		[ -h "$CONF/25-swoole.ini" ] && suexec rm -f "$CONF/25-swoole.ini"
	else
		[ -e "$CONF/25-swoole.ini" ] || suexec ln -sf "$MODS/swoole.ini" "$CONF/25-swoole.ini"
	fi
	if [ \( "${PHP_MODULE_SYSVMSG:-1}" = 0 -a -z "${PHP_CLI_MODULE_SYSVMSG}" \) -o "${PHP_CLI_MODULE_SYSVMSG:-1}" = 0 ]; then
		[ -h "$CONF/20-sysvmsg.ini" ] && suexec rm -f "$CONF/20-sysvmsg.ini"
	else
		[ -e "$CONF/20-sysvmsg.ini" ] || suexec ln -sf "$MODS/sysvmsg.ini" "$CONF/20-sysvmsg.ini"
	fi
	if [ \( "${PHP_MODULE_SYSVSEM:-1}" = 0 -a -z "${PHP_CLI_MODULE_SYSVSEM}" \) -o "${PHP_CLI_MODULE_SYSVSEM:-1}" = 0 ]; then
		[ -h "$CONF/20-sysvsem.ini" ] && suexec rm -f "$CONF/20-sysvsem.ini"
	else
		[ -e "$CONF/20-sysvsem.ini" ] || suexec ln -sf "$MODS/sysvsem.ini" "$CONF/20-sysvsem.ini"
	fi
	if [ \( "${PHP_MODULE_SYSVSHM:-1}" = 0 -a -z "${PHP_CLI_MODULE_SYSVSHM}" \) -o "${PHP_CLI_MODULE_SYSVSHM:-1}" = 0 ]; then
		[ -h "$CONF/20-sysvshm.ini" ] && suexec rm -f "$CONF/20-sysvshm.ini"
	else
		[ -e "$CONF/20-sysvshm.ini" ] || suexec ln -sf "$MODS/sysvshm.ini" "$CONF/20-sysvshm.ini"
	fi
	if [ \( "${PHP_MODULE_TIDY:-1}" = 0 -a -z "${PHP_CLI_MODULE_TIDY}" \) -o "${PHP_CLI_MODULE_TIDY:-1}" = 0 ]; then
		[ -h "$CONF/20-tidy.ini" ] && suexec rm -f "$CONF/20-tidy.ini"
	else
		[ -e "$CONF/20-tidy.ini" ] || suexec ln -sf "$MODS/tidy.ini" "$CONF/20-tidy.ini"
	fi
	if [ \( "${PHP_MODULE_TOKENIZER:-1}" = 0 -a -z "${PHP_CLI_MODULE_TOKENIZER}" \) -o "${PHP_CLI_MODULE_TOKENIZER:-1}" = 0 ]; then
		[ -h "$CONF/20-tokenizer.ini" ] && suexec rm -f "$CONF/20-tokenizer.ini"
	else
		[ -e "$CONF/20-tokenizer.ini" ] || suexec ln -sf "$MODS/tokenizer.ini" "$CONF/20-tokenizer.ini"
	fi
	if [ \( "${PHP_MODULE_UOPZ:-1}" = 0 -a -z "${PHP_CLI_MODULE_UOPZ}" \) -o "${PHP_CLI_MODULE_UOPZ:-1}" = 0 ]; then
		[ -h "$CONF/20-uopz.ini" ] && suexec rm -f "$CONF/20-uopz.ini"
	else
		[ -e "$CONF/20-uopz.ini" ] || suexec ln -sf "$MODS/uopz.ini" "$CONF/20-uopz.ini"
	fi
	if [ \( "${PHP_MODULE_UPLOADPROGRESS:-1}" = 0 -a -z "${PHP_CLI_MODULE_UPLOADPROGRESS}" \) -o "${PHP_CLI_MODULE_UPLOADPROGRESS:-1}" = 0 ]; then
		[ -h "$CONF/20-uploadprogress.ini" ] && suexec rm -f "$CONF/20-uploadprogress.ini"
	else
		[ -e "$CONF/20-uploadprogress.ini" ] || suexec ln -sf "$MODS/uploadprogress.ini" "$CONF/20-uploadprogress.ini"
	fi
	if [ \( "${PHP_MODULE_UUID:-1}" = 0 -a -z "${PHP_CLI_MODULE_UUID}" \) -o "${PHP_CLI_MODULE_UUID:-1}" = 0 ]; then
		[ -h "$CONF/20-uuid.ini" ] && suexec rm -f "$CONF/20-uuid.ini"
	else
		[ -e "$CONF/20-uuid.ini" ] || suexec ln -sf "$MODS/uuid.ini" "$CONF/20-uuid.ini"
	fi
	if [ \( "${PHP_MODULE_VIPS:-1}" = 0 -a -z "${PHP_CLI_MODULE_VIPS}" \) -o "${PHP_CLI_MODULE_VIPS:-1}" = 0 ]; then
		[ -h "$CONF/30-vips.ini" ] && suexec rm -f "$CONF/30-vips.ini"
	else
		[ -e "$CONF/30-vips.ini" ] || suexec ln -sf "$MODS/vips.ini" "$CONF/30-vips.ini"
	fi
	if [ \( "${PHP_MODULE_XDEBUG:-1}" = 0 -a -z "${PHP_CLI_MODULE_XDEBUG}" \) -o "${PHP_CLI_MODULE_XDEBUG:-1}" = 0 ]; then
		[ -h "$CONF/20-xdebug.ini" ] && suexec rm -f "$CONF/20-xdebug.ini"
	else
		[ -e "$CONF/20-xdebug.ini" ] || suexec ln -sf "$MODS/xdebug.ini" "$CONF/20-xdebug.ini"
	fi
	if [ \( "${PHP_MODULE_XHPROF:-1}" = 0 -a -z "${PHP_CLI_MODULE_XHPROF}" \) -o "${PHP_CLI_MODULE_XHPROF:-1}" = 0 ]; then
		[ -h "$CONF/20-xhprof.ini" ] && suexec rm -f "$CONF/20-xhprof.ini"
	else
		[ -e "$CONF/20-xhprof.ini" ] || suexec ln -sf "$MODS/xhprof.ini" "$CONF/20-xhprof.ini"
	fi
	if [ \( "${PHP_MODULE_XLSWRITER:-1}" = 0 -a -z "${PHP_CLI_MODULE_XLSWRITER}" \) -o "${PHP_CLI_MODULE_XLSWRITER:-1}" = 0 ]; then
		[ -h "$CONF/20-xlswriter.ini" ] && suexec rm -f "$CONF/20-xlswriter.ini"
	else
		[ -e "$CONF/20-xlswriter.ini" ] || suexec ln -sf "$MODS/xlswriter.ini" "$CONF/20-xlswriter.ini"
	fi
	if [ \( "${PHP_MODULE_XML:-1}" = 0 -a -z "${PHP_CLI_MODULE_XML}" \) -o "${PHP_CLI_MODULE_XML:-1}" = 0 ]; then
		[ -h "$CONF/15-xml.ini" ] && suexec rm -f "$CONF/15-xml.ini"
	else
		[ -e "$CONF/15-xml.ini" ] || suexec ln -sf "$MODS/xml.ini" "$CONF/15-xml.ini"
	fi
	if [ \( "${PHP_MODULE_XMLREADER:-1}" = 0 -a -z "${PHP_CLI_MODULE_XMLREADER}" \) -o "${PHP_CLI_MODULE_XMLREADER:-1}" = 0 ]; then
		[ -h "$CONF/20-xmlreader.ini" ] && suexec rm -f "$CONF/20-xmlreader.ini"
	else
		[ -e "$CONF/20-xmlreader.ini" ] || suexec ln -sf "$MODS/xmlreader.ini" "$CONF/20-xmlreader.ini"
	fi
	if [ \( "${PHP_MODULE_XMLRPC:-1}" = 0 -a -z "${PHP_CLI_MODULE_XMLRPC}" \) -o "${PHP_CLI_MODULE_XMLRPC:-1}" = 0 ]; then
		[ -h "$CONF/20-xmlrpc.ini" ] && suexec rm -f "$CONF/20-xmlrpc.ini"
	else
		[ -e "$CONF/20-xmlrpc.ini" ] || suexec ln -sf "$MODS/xmlrpc.ini" "$CONF/20-xmlrpc.ini"
	fi
	if [ \( "${PHP_MODULE_XMLWRITER:-1}" = 0 -a -z "${PHP_CLI_MODULE_XMLWRITER}" \) -o "${PHP_CLI_MODULE_XMLWRITER:-1}" = 0 ]; then
		[ -h "$CONF/20-xmlwriter.ini" ] && suexec rm -f "$CONF/20-xmlwriter.ini"
	else
		[ -e "$CONF/20-xmlwriter.ini" ] || suexec ln -sf "$MODS/xmlwriter.ini" "$CONF/20-xmlwriter.ini"
	fi
	if [ \( "${PHP_MODULE_XSL:-1}" = 0 -a -z "${PHP_CLI_MODULE_XSL}" \) -o "${PHP_CLI_MODULE_XSL:-1}" = 0 ]; then
		[ -h "$CONF/20-xsl.ini" ] && suexec rm -f "$CONF/20-xsl.ini"
	else
		[ -e "$CONF/20-xsl.ini" ] || suexec ln -sf "$MODS/xsl.ini" "$CONF/20-xsl.ini"
	fi
	if [ \( "${PHP_MODULE_YAC:-1}" = 0 -a -z "${PHP_CLI_MODULE_YAC}" \) -o "${PHP_CLI_MODULE_YAC:-1}" = 0 ]; then
		[ -h "$CONF/20-yac.ini" ] && suexec rm -f "$CONF/20-yac.ini"
	else
		[ -e "$CONF/20-yac.ini" ] || suexec ln -sf "$MODS/yac.ini" "$CONF/20-yac.ini"
	fi
	if [ \( "${PHP_MODULE_YAML:-1}" = 0 -a -z "${PHP_CLI_MODULE_YAML}" \) -o "${PHP_CLI_MODULE_YAML:-1}" = 0 ]; then
		[ -h "$CONF/20-yaml.ini" ] && suexec rm -f "$CONF/20-yaml.ini"
	else
		[ -e "$CONF/20-yaml.ini" ] || suexec ln -sf "$MODS/yaml.ini" "$CONF/20-yaml.ini"
	fi
	if [ \( "${PHP_MODULE_ZIP:-1}" = 0 -a -z "${PHP_CLI_MODULE_ZIP}" \) -o "${PHP_CLI_MODULE_ZIP:-1}" = 0 ]; then
		[ -h "$CONF/20-zip.ini" ] && suexec rm -f "$CONF/20-zip.ini"
	else
		[ -e "$CONF/20-zip.ini" ] || suexec ln -sf "$MODS/zip.ini" "$CONF/20-zip.ini"
	fi
	if [ \( "${PHP_MODULE_ZMQ:-1}" = 0 -a -z "${PHP_CLI_MODULE_ZMQ}" \) -o "${PHP_CLI_MODULE_ZMQ:-1}" = 0 ]; then
		[ -h "$CONF/20-zmq.ini" ] && suexec rm -f "$CONF/20-zmq.ini"
	else
		[ -e "$CONF/20-zmq.ini" ] || suexec ln -sf "$MODS/zmq.ini" "$CONF/20-zmq.ini"
	fi
	if [ \( "${PHP_MODULE_ZSTD:-1}" = 0 -a -z "${PHP_CLI_MODULE_ZSTD}" \) -o "${PHP_CLI_MODULE_ZSTD:-1}" = 0 ]; then
		[ -h "$CONF/30-zstd.ini" ] && suexec rm -f "$CONF/30-zstd.ini"
	else
		[ -e "$CONF/30-zstd.ini" ] || suexec ln -sf "$MODS/zstd.ini" "$CONF/30-zstd.ini"
	fi
else
	if [ \( "${PHP_MODULE_AMQP:-0}" != 0 -a -z "${PHP_CLI_MODULE_AMQP}" \) -o "${PHP_CLI_MODULE_AMQP:-0}" != 0 ]; then
		[ -e "$CONF/20-amqp.ini" ] || suexec ln -sf "$MODS/amqp.ini" "$CONF/20-amqp.ini"
	else
		[ -h "$CONF/20-amqp.ini" ] && suexec rm -f $CONF/20-amqp.ini
	fi
	if [ \( "${PHP_MODULE_APCU:-0}" != 0 -a -z "${PHP_CLI_MODULE_APCU}" \) -o "${PHP_CLI_MODULE_APCU:-0}" != 0 ]; then
		[ -e "$CONF/20-apcu.ini" ] || suexec ln -sf "$MODS/apcu.ini" "$CONF/20-apcu.ini"
	else
		[ -h "$CONF/20-apcu.ini" ] && suexec rm -f $CONF/20-apcu.ini
	fi
	if [ \( "${PHP_MODULE_AST:-0}" != 0 -a -z "${PHP_CLI_MODULE_AST}" \) -o "${PHP_CLI_MODULE_AST:-0}" != 0 ]; then
		[ -e "$CONF/20-ast.ini" ] || suexec ln -sf "$MODS/ast.ini" "$CONF/20-ast.ini"
	else
		[ -h "$CONF/20-ast.ini" ] && suexec rm -f $CONF/20-ast.ini
	fi
	if [ \( "${PHP_MODULE_BCMATH:-0}" != 0 -a -z "${PHP_CLI_MODULE_BCMATH}" \) -o "${PHP_CLI_MODULE_BCMATH:-0}" != 0 ]; then
		[ -e "$CONF/20-bcmath.ini" ] || suexec ln -sf "$MODS/bcmath.ini" "$CONF/20-bcmath.ini"
	else
		[ -h "$CONF/20-bcmath.ini" ] && suexec rm -f $CONF/20-bcmath.ini
	fi
	if [ \( "${PHP_MODULE_BZ2:-0}" != 0 -a -z "${PHP_CLI_MODULE_BZ2}" \) -o "${PHP_CLI_MODULE_BZ2:-0}" != 0 ]; then
		[ -e "$CONF/20-bz2.ini" ] || suexec ln -sf "$MODS/bz2.ini" "$CONF/20-bz2.ini"
	else
		[ -h "$CONF/20-bz2.ini" ] && suexec rm -f $CONF/20-bz2.ini
	fi
	if [ \( "${PHP_MODULE_CALENDAR:-0}" != 0 -a -z "${PHP_CLI_MODULE_CALENDAR}" \) -o "${PHP_CLI_MODULE_CALENDAR:-0}" != 0 ]; then
		[ -e "$CONF/20-calendar.ini" ] || suexec ln -sf "$MODS/calendar.ini" "$CONF/20-calendar.ini"
	else
		[ -h "$CONF/20-calendar.ini" ] && suexec rm -f $CONF/20-calendar.ini
	fi
	if [ \( "${PHP_MODULE_CTYPE:-0}" != 0 -a -z "${PHP_CLI_MODULE_CTYPE}" \) -o "${PHP_CLI_MODULE_CTYPE:-0}" != 0 ]; then
		[ -e "$CONF/20-ctype.ini" ] || suexec ln -sf "$MODS/ctype.ini" "$CONF/20-ctype.ini"
	else
		[ -h "$CONF/20-ctype.ini" ] && suexec rm -f $CONF/20-ctype.ini
	fi
	if [ \( "${PHP_MODULE_CURL:-0}" != 0 -a -z "${PHP_CLI_MODULE_CURL}" \) -o "${PHP_CLI_MODULE_CURL:-0}" != 0 ]; then
		[ -e "$CONF/20-curl.ini" ] || suexec ln -sf "$MODS/curl.ini" "$CONF/20-curl.ini"
	else
		[ -h "$CONF/20-curl.ini" ] && suexec rm -f $CONF/20-curl.ini
	fi
	if [ \( "${PHP_MODULE_DBA:-0}" != 0 -a -z "${PHP_CLI_MODULE_DBA}" \) -o "${PHP_CLI_MODULE_DBA:-0}" != 0 ]; then
		[ -e "$CONF/20-dba.ini" ] || suexec ln -sf "$MODS/dba.ini" "$CONF/20-dba.ini"
	else
		[ -h "$CONF/20-dba.ini" ] && suexec rm -f $CONF/20-dba.ini
	fi
	if [ \( "${PHP_MODULE_DECIMAL:-0}" != 0 -a -z "${PHP_CLI_MODULE_DECIMAL}" \) -o "${PHP_CLI_MODULE_DECIMAL:-0}" != 0 ]; then
		[ -e "$CONF/30-decimal.ini" ] || suexec ln -sf "$MODS/decimal.ini" "$CONF/30-decimal.ini"
	else
		[ -h "$CONF/30-decimal.ini" ] && suexec rm -f $CONF/30-decimal.ini
	fi
	if [ \( "${PHP_MODULE_DIO:-0}" != 0 -a -z "${PHP_CLI_MODULE_DIO}" \) -o "${PHP_CLI_MODULE_DIO:-0}" != 0 ]; then
		[ -e "$CONF/20-dio.ini" ] || suexec ln -sf "$MODS/dio.ini" "$CONF/20-dio.ini"
	else
		[ -h "$CONF/20-dio.ini" ] && suexec rm -f $CONF/20-dio.ini
	fi
	if [ \( "${PHP_MODULE_DOM:-0}" != 0 -a -z "${PHP_CLI_MODULE_DOM}" \) -o "${PHP_CLI_MODULE_DOM:-0}" != 0 ]; then
		[ -e "$CONF/20-dom.ini" ] || suexec ln -sf "$MODS/dom.ini" "$CONF/20-dom.ini"
	else
		[ -h "$CONF/20-dom.ini" ] && suexec rm -f $CONF/20-dom.ini
	fi
	if [ \( "${PHP_MODULE_DS:-0}" != 0 -a -z "${PHP_CLI_MODULE_DS}" \) -o "${PHP_CLI_MODULE_DS:-0}" != 0 ]; then
		[ -e "$CONF/30-ds.ini" ] || suexec ln -sf "$MODS/ds.ini" "$CONF/30-ds.ini"
	else
		[ -h "$CONF/30-ds.ini" ] && suexec rm -f $CONF/30-ds.ini
	fi
	if [ \( "${PHP_MODULE_ENCHANT:-0}" != 0 -a -z "${PHP_CLI_MODULE_ENCHANT}" \) -o "${PHP_CLI_MODULE_ENCHANT:-0}" != 0 ]; then
		[ -e "$CONF/20-enchant.ini" ] || suexec ln -sf "$MODS/enchant.ini" "$CONF/20-enchant.ini"
	else
		[ -h "$CONF/20-enchant.ini" ] && suexec rm -f $CONF/20-enchant.ini
	fi
	if [ \( "${PHP_MODULE_EXCIMER:-0}" != 0 -a -z "${PHP_CLI_MODULE_EXCIMER}" \) -o "${PHP_CLI_MODULE_EXCIMER:-0}" != 0 ]; then
		[ -e "$CONF/20-excimer.ini" ] || suexec ln -sf "$MODS/excimer.ini" "$CONF/20-excimer.ini"
	else
		[ -h "$CONF/20-excimer.ini" ] && suexec rm -f $CONF/20-excimer.ini
	fi
	if [ \( "${PHP_MODULE_EXIF:-0}" != 0 -a -z "${PHP_CLI_MODULE_EXIF}" \) -o "${PHP_CLI_MODULE_EXIF:-0}" != 0 ]; then
		[ -e "$CONF/20-exif.ini" ] || suexec ln -sf "$MODS/exif.ini" "$CONF/20-exif.ini"
	else
		[ -h "$CONF/20-exif.ini" ] && suexec rm -f $CONF/20-exif.ini
	fi
	if [ \( "${PHP_MODULE_FFI:-0}" != 0 -a -z "${PHP_CLI_MODULE_FFI}" \) -o "${PHP_CLI_MODULE_FFI:-0}" != 0 ]; then
		[ -e "$CONF/20-ffi.ini" ] || suexec ln -sf "$MODS/ffi.ini" "$CONF/20-ffi.ini"
	else
		[ -h "$CONF/20-ffi.ini" ] && suexec rm -f $CONF/20-ffi.ini
	fi
	if [ \( "${PHP_MODULE_FILEINFO:-0}" != 0 -a -z "${PHP_CLI_MODULE_FILEINFO}" \) -o "${PHP_CLI_MODULE_FILEINFO:-0}" != 0 ]; then
		[ -e "$CONF/20-fileinfo.ini" ] || suexec ln -sf "$MODS/fileinfo.ini" "$CONF/20-fileinfo.ini"
	else
		[ -h "$CONF/20-fileinfo.ini" ] && suexec rm -f $CONF/20-fileinfo.ini
	fi
	if [ \( "${PHP_MODULE_FTP:-0}" != 0 -a -z "${PHP_CLI_MODULE_FTP}" \) -o "${PHP_CLI_MODULE_FTP:-0}" != 0 ]; then
		[ -e "$CONF/20-ftp.ini" ] || suexec ln -sf "$MODS/ftp.ini" "$CONF/20-ftp.ini"
	else
		[ -h "$CONF/20-ftp.ini" ] && suexec rm -f $CONF/20-ftp.ini
	fi
	if [ \( "${PHP_MODULE_GD:-0}" != 0 -a -z "${PHP_CLI_MODULE_GD}" \) -o "${PHP_CLI_MODULE_GD:-0}" != 0 ]; then
		[ -e "$CONF/20-gd.ini" ] || suexec ln -sf "$MODS/gd.ini" "$CONF/20-gd.ini"
	else
		[ -h "$CONF/20-gd.ini" ] && suexec rm -f $CONF/20-gd.ini
	fi
	if [ \( "${PHP_MODULE_GEARMAN:-0}" != 0 -a -z "${PHP_CLI_MODULE_GEARMAN}" \) -o "${PHP_CLI_MODULE_GEARMAN:-0}" != 0 ]; then
		[ -e "$CONF/20-gearman.ini" ] || suexec ln -sf "$MODS/gearman.ini" "$CONF/20-gearman.ini"
	else
		[ -h "$CONF/20-gearman.ini" ] && suexec rm -f $CONF/20-gearman.ini
	fi
	if [ \( "${PHP_MODULE_GETTEXT:-0}" != 0 -a -z "${PHP_CLI_MODULE_GETTEXT}" \) -o "${PHP_CLI_MODULE_GETTEXT:-0}" != 0 ]; then
		[ -e "$CONF/20-gettext.ini" ] || suexec ln -sf "$MODS/gettext.ini" "$CONF/20-gettext.ini"
	else
		[ -h "$CONF/20-gettext.ini" ] && suexec rm -f $CONF/20-gettext.ini
	fi
	if [ \( "${PHP_MODULE_GMAGICK:-0}" != 0 -a -z "${PHP_CLI_MODULE_GMAGICK}" \) -o "${PHP_CLI_MODULE_GMAGICK:-0}" != 0 ]; then
		[ -e "$CONF/20-gmagick.ini" ] || suexec ln -sf "$MODS/gmagick.ini" "$CONF/20-gmagick.ini"
	else
		[ -h "$CONF/20-gmagick.ini" ] && suexec rm -f $CONF/20-gmagick.ini
	fi
	if [ \( "${PHP_MODULE_GMP:-0}" != 0 -a -z "${PHP_CLI_MODULE_GMP}" \) -o "${PHP_CLI_MODULE_GMP:-0}" != 0 ]; then
		[ -e "$CONF/20-gmp.ini" ] || suexec ln -sf "$MODS/gmp.ini" "$CONF/20-gmp.ini"
	else
		[ -h "$CONF/20-gmp.ini" ] && suexec rm -f $CONF/20-gmp.ini
	fi
	if [ \( "${PHP_MODULE_GNUPG:-0}" != 0 -a -z "${PHP_CLI_MODULE_GNUPG}" \) -o "${PHP_CLI_MODULE_GNUPG:-0}" != 0 ]; then
		[ -e "$CONF/20-gnupg.ini" ] || suexec ln -sf "$MODS/gnupg.ini" "$CONF/20-gnupg.ini"
	else
		[ -h "$CONF/20-gnupg.ini" ] && suexec rm -f $CONF/20-gnupg.ini
	fi
	if [ \( "${PHP_MODULE_GRPC:-0}" != 0 -a -z "${PHP_CLI_MODULE_GRPC}" \) -o "${PHP_CLI_MODULE_GRPC:-0}" != 0 ]; then
		[ -e "$CONF/30-grpc.ini" ] || suexec ln -sf "$MODS/grpc.ini" "$CONF/30-grpc.ini"
	else
		[ -h "$CONF/30-grpc.ini" ] && suexec rm -f $CONF/30-grpc.ini
	fi
	if [ \( "${PHP_MODULE_HTTP:-0}" != 0 -a -z "${PHP_CLI_MODULE_HTTP}" \) -o "${PHP_CLI_MODULE_HTTP:-0}" != 0 ]; then
		[ -e "$CONF/25-http.ini" ] || suexec ln -sf "$MODS/http.ini" "$CONF/25-http.ini"
	else
		[ -h "$CONF/25-http.ini" ] && suexec rm -f $CONF/25-http.ini
	fi
	if [ \( "${PHP_MODULE_ICONV:-0}" != 0 -a -z "${PHP_CLI_MODULE_ICONV}" \) -o "${PHP_CLI_MODULE_ICONV:-0}" != 0 ]; then
		[ -e "$CONF/20-iconv.ini" ] || suexec ln -sf "$MODS/iconv.ini" "$CONF/20-iconv.ini"
	else
		[ -h "$CONF/20-iconv.ini" ] && suexec rm -f $CONF/20-iconv.ini
	fi
	if [ \( "${PHP_MODULE_IGBINARY:-0}" != 0 -a -z "${PHP_CLI_MODULE_IGBINARY}" \) -o "${PHP_CLI_MODULE_IGBINARY:-0}" != 0 ]; then
		[ -e "$CONF/20-igbinary.ini" ] || suexec ln -sf "$MODS/igbinary.ini" "$CONF/20-igbinary.ini"
	else
		[ -h "$CONF/20-igbinary.ini" ] && suexec rm -f $CONF/20-igbinary.ini
	fi
	if [ \( "${PHP_MODULE_IMAGICK:-0}" != 0 -a -z "${PHP_CLI_MODULE_IMAGICK}" \) -o "${PHP_CLI_MODULE_IMAGICK:-0}" != 0 ]; then
		[ -e "$CONF/20-imagick.ini" ] || suexec ln -sf "$MODS/imagick.ini" "$CONF/20-imagick.ini"
	else
		[ -h "$CONF/20-imagick.ini" ] && suexec rm -f $CONF/20-imagick.ini
	fi
	if [ \( "${PHP_MODULE_IMAP:-0}" != 0 -a -z "${PHP_CLI_MODULE_IMAP}" \) -o "${PHP_CLI_MODULE_IMAP:-0}" != 0 ]; then
		[ -e "$CONF/20-imap.ini" ] || suexec ln -sf "$MODS/imap.ini" "$CONF/20-imap.ini"
	else
		[ -h "$CONF/20-imap.ini" ] && suexec rm -f $CONF/20-imap.ini
	fi
	if [ \( "${PHP_MODULE_INOTIFY:-0}" != 0 -a -z "${PHP_CLI_MODULE_INOTIFY}" \) -o "${PHP_CLI_MODULE_INOTIFY:-0}" != 0 ]; then
		[ -e "$CONF/30-inotify.ini" ] || suexec ln -sf "$MODS/inotify.ini" "$CONF/30-inotify.ini"
	else
		[ -h "$CONF/30-inotify.ini" ] && suexec rm -f $CONF/30-inotify.ini
	fi
	if [ \( "${PHP_MODULE_INTL:-0}" != 0 -a -z "${PHP_CLI_MODULE_INTL}" \) -o "${PHP_CLI_MODULE_INTL:-0}" != 0 ]; then
		[ -e "$CONF/20-intl.ini" ] || suexec ln -sf "$MODS/intl.ini" "$CONF/20-intl.ini"
	else
		[ -h "$CONF/20-intl.ini" ] && suexec rm -f $CONF/20-intl.ini
	fi
	if [ \( "${PHP_MODULE_LDAP:-0}" != 0 -a -z "${PHP_CLI_MODULE_LDAP}" \) -o "${PHP_CLI_MODULE_LDAP:-0}" != 0 ]; then
		[ -e "$CONF/20-ldap.ini" ] || suexec ln -sf "$MODS/ldap.ini" "$CONF/20-ldap.ini"
	else
		[ -h "$CONF/20-ldap.ini" ] && suexec rm -f $CONF/20-ldap.ini
	fi
	if [ \( "${PHP_MODULE_LIBVIRT_PHP:-0}" != 0 -a -z "${PHP_CLI_MODULE_LIBVIRT_PHP}" \) -o "${PHP_CLI_MODULE_LIBVIRT_PHP:-0}" != 0 ]; then
		[ -e "$CONF/40-libvirt-php.ini" ] || suexec ln -sf "$MODS/libvirt-php.ini" "$CONF/40-libvirt-php.ini"
	else
		[ -h "$CONF/40-libvirt-php.ini" ] && suexec rm -f $CONF/40-libvirt-php.ini
	fi
	if [ \( "${PHP_MODULE_LZ4:-0}" != 0 -a -z "${PHP_CLI_MODULE_LZ4}" \) -o "${PHP_CLI_MODULE_LZ4:-0}" != 0 ]; then
		[ -e "$CONF/20-lz4.ini" ] || suexec ln -sf "$MODS/lz4.ini" "$CONF/20-lz4.ini"
	else
		[ -h "$CONF/20-lz4.ini" ] && suexec rm -f $CONF/20-lz4.ini
	fi
	if [ \( "${PHP_MODULE_MAILPARSE:-0}" != 0 -a -z "${PHP_CLI_MODULE_MAILPARSE}" \) -o "${PHP_CLI_MODULE_MAILPARSE:-0}" != 0 ]; then
		[ -e "$CONF/25-mailparse.ini" ] || suexec ln -sf "$MODS/mailparse.ini" "$CONF/25-mailparse.ini"
	else
		[ -h "$CONF/25-mailparse.ini" ] && suexec rm -f $CONF/25-mailparse.ini
	fi
	if [ \( "${PHP_MODULE_MAXMINDDB:-0}" != 0 -a -z "${PHP_CLI_MODULE_MAXMINDDB}" \) -o "${PHP_CLI_MODULE_MAXMINDDB:-0}" != 0 ]; then
		[ -e "$CONF/30-maxminddb.ini" ] || suexec ln -sf "$MODS/maxminddb.ini" "$CONF/30-maxminddb.ini"
	else
		[ -h "$CONF/30-maxminddb.ini" ] && suexec rm -f $CONF/30-maxminddb.ini
	fi
	if [ \( "${PHP_MODULE_MBSTRING:-0}" != 0 -a -z "${PHP_CLI_MODULE_MBSTRING}" \) -o "${PHP_CLI_MODULE_MBSTRING:-0}" != 0 ]; then
		[ -e "$CONF/20-mbstring.ini" ] || suexec ln -sf "$MODS/mbstring.ini" "$CONF/20-mbstring.ini"
	else
		[ -h "$CONF/20-mbstring.ini" ] && suexec rm -f $CONF/20-mbstring.ini
	fi
	if [ \( "${PHP_MODULE_MCRYPT:-0}" != 0 -a -z "${PHP_CLI_MODULE_MCRYPT}" \) -o "${PHP_CLI_MODULE_MCRYPT:-0}" != 0 ]; then
		[ -e "$CONF/20-mcrypt.ini" ] || suexec ln -sf "$MODS/mcrypt.ini" "$CONF/20-mcrypt.ini"
	else
		[ -h "$CONF/20-mcrypt.ini" ] && suexec rm -f $CONF/20-mcrypt.ini
	fi
	if [ \( "${PHP_MODULE_MEMCACHE:-0}" != 0 -a -z "${PHP_CLI_MODULE_MEMCACHE}" \) -o "${PHP_CLI_MODULE_MEMCACHE:-0}" != 0 ]; then
		[ -e "$CONF/20-memcache.ini" ] || suexec ln -sf "$MODS/memcache.ini" "$CONF/20-memcache.ini"
	else
		[ -h "$CONF/20-memcache.ini" ] && suexec rm -f $CONF/20-memcache.ini
	fi
	if [ \( "${PHP_MODULE_MEMCACHED:-0}" != 0 -a -z "${PHP_CLI_MODULE_MEMCACHED}" \) -o "${PHP_CLI_MODULE_MEMCACHED:-0}" != 0 ]; then
		[ -e "$CONF/25-memcached.ini" ] || suexec ln -sf "$MODS/memcached.ini" "$CONF/25-memcached.ini"
	else
		[ -h "$CONF/25-memcached.ini" ] && suexec rm -f $CONF/25-memcached.ini
	fi
	if [ \( "${PHP_MODULE_MONGODB:-0}" != 0 -a -z "${PHP_CLI_MODULE_MONGODB}" \) -o "${PHP_CLI_MODULE_MONGODB:-0}" != 0 ]; then
		[ -e "$CONF/20-mongodb.ini" ] || suexec ln -sf "$MODS/mongodb.ini" "$CONF/20-mongodb.ini"
	else
		[ -h "$CONF/20-mongodb.ini" ] && suexec rm -f $CONF/20-mongodb.ini
	fi
	if [ \( "${PHP_MODULE_MSGPACK:-0}" != 0 -a -z "${PHP_CLI_MODULE_MSGPACK}" \) -o "${PHP_CLI_MODULE_MSGPACK:-0}" != 0 ]; then
		[ -e "$CONF/20-msgpack.ini" ] || suexec ln -sf "$MODS/msgpack.ini" "$CONF/20-msgpack.ini"
	else
		[ -h "$CONF/20-msgpack.ini" ] && suexec rm -f $CONF/20-msgpack.ini
	fi
	if [ \( "${PHP_MODULE_MYSQLI:-0}" != 0 -a -z "${PHP_CLI_MODULE_MYSQLI}" \) -o "${PHP_CLI_MODULE_MYSQLI:-0}" != 0 ]; then
		[ -e "$CONF/20-mysqli.ini" ] || suexec ln -sf "$MODS/mysqli.ini" "$CONF/20-mysqli.ini"
	else
		[ -h "$CONF/20-mysqli.ini" ] && suexec rm -f $CONF/20-mysqli.ini
	fi
	if [ \( "${PHP_MODULE_MYSQLND:-0}" != 0 -a -z "${PHP_CLI_MODULE_MYSQLND}" \) -o "${PHP_CLI_MODULE_MYSQLND:-0}" != 0 ]; then
		[ -e "$CONF/10-mysqlnd.ini" ] || suexec ln -sf "$MODS/mysqlnd.ini" "$CONF/10-mysqlnd.ini"
	else
		[ -h "$CONF/10-mysqlnd.ini" ] && suexec rm -f $CONF/10-mysqlnd.ini
	fi
	if [ \( "${PHP_MODULE_OAUTH:-0}" != 0 -a -z "${PHP_CLI_MODULE_OAUTH}" \) -o "${PHP_CLI_MODULE_OAUTH:-0}" != 0 ]; then
		[ -e "$CONF/20-oauth.ini" ] || suexec ln -sf "$MODS/oauth.ini" "$CONF/20-oauth.ini"
	else
		[ -h "$CONF/20-oauth.ini" ] && suexec rm -f $CONF/20-oauth.ini
	fi
	if [ \( "${PHP_MODULE_ODBC:-0}" != 0 -a -z "${PHP_CLI_MODULE_ODBC}" \) -o "${PHP_CLI_MODULE_ODBC:-0}" != 0 ]; then
		[ -e "$CONF/20-odbc.ini" ] || suexec ln -sf "$MODS/odbc.ini" "$CONF/20-odbc.ini"
	else
		[ -h "$CONF/20-odbc.ini" ] && suexec rm -f $CONF/20-odbc.ini
	fi
	if [ \( "${PHP_MODULE_OPCACHE:-0}" != 0 -a -z "${PHP_CLI_MODULE_OPCACHE}" \) -o "${PHP_CLI_MODULE_OPCACHE:-0}" != 0 ]; then
		[ -e "$CONF/10-opcache.ini" ] || suexec ln -sf "$MODS/opcache.ini" "$CONF/10-opcache.ini"
	else
		[ -h "$CONF/10-opcache.ini" ] && suexec rm -f $CONF/10-opcache.ini
	fi
	if [ \( "${PHP_MODULE_OPENSWOOLE:-0}" != 0 -a -z "${PHP_CLI_MODULE_OPENSWOOLE}" \) -o "${PHP_CLI_MODULE_OPENSWOOLE:-0}" != 0 ]; then
		[ -e "$CONF/25-openswoole.ini" ] || suexec ln -sf "$MODS/openswoole.ini" "$CONF/25-openswoole.ini"
	else
		[ -h "$CONF/25-openswoole.ini" ] && suexec rm -f $CONF/25-openswoole.ini
	fi
	if [ \( "${PHP_MODULE_OPENTELEMETRY:-0}" != 0 -a -z "${PHP_CLI_MODULE_OPENTELEMETRY}" \) -o "${PHP_CLI_MODULE_OPENTELEMETRY:-0}" != 0 ]; then
		[ -e "$CONF/20-opentelemetry.ini" ] || suexec ln -sf "$MODS/opentelemetry.ini" "$CONF/20-opentelemetry.ini"
	else
		[ -h "$CONF/20-opentelemetry.ini" ] && suexec rm -f $CONF/20-opentelemetry.ini
	fi
	if [ \( "${PHP_MODULE_PCOV:-0}" != 0 -a -z "${PHP_CLI_MODULE_PCOV}" \) -o "${PHP_CLI_MODULE_PCOV:-0}" != 0 ]; then
		[ -e "$CONF/20-pcov.ini" ] || suexec ln -sf "$MODS/pcov.ini" "$CONF/20-pcov.ini"
	else
		[ -h "$CONF/20-pcov.ini" ] && suexec rm -f $CONF/20-pcov.ini
	fi
	if [ \( "${PHP_MODULE_PDO:-0}" != 0 -a -z "${PHP_CLI_MODULE_PDO}" \) -o "${PHP_CLI_MODULE_PDO:-0}" != 0 ]; then
		[ -e "$CONF/10-pdo.ini" ] || suexec ln -sf "$MODS/pdo.ini" "$CONF/10-pdo.ini"
	else
		[ -h "$CONF/10-pdo.ini" ] && suexec rm -f $CONF/10-pdo.ini
	fi
	if [ \( "${PHP_MODULE_PDO_DBLIB:-0}" != 0 -a -z "${PHP_CLI_MODULE_PDO_DBLIB}" \) -o "${PHP_CLI_MODULE_PDO_DBLIB:-0}" != 0 ]; then
		[ -e "$CONF/20-pdo_dblib.ini" ] || suexec ln -sf "$MODS/pdo_dblib.ini" "$CONF/20-pdo_dblib.ini"
	else
		[ -h "$CONF/20-pdo_dblib.ini" ] && suexec rm -f $CONF/20-pdo_dblib.ini
	fi
	if [ \( "${PHP_MODULE_PDO_FIREBIRD:-0}" != 0 -a -z "${PHP_CLI_MODULE_PDO_FIREBIRD}" \) -o "${PHP_CLI_MODULE_PDO_FIREBIRD:-0}" != 0 ]; then
		[ -e "$CONF/20-pdo_firebird.ini" ] || suexec ln -sf "$MODS/pdo_firebird.ini" "$CONF/20-pdo_firebird.ini"
	else
		[ -h "$CONF/20-pdo_firebird.ini" ] && suexec rm -f $CONF/20-pdo_firebird.ini
	fi
	if [ \( "${PHP_MODULE_PDO_MYSQL:-0}" != 0 -a -z "${PHP_CLI_MODULE_PDO_MYSQL}" \) -o "${PHP_CLI_MODULE_PDO_MYSQL:-0}" != 0 ]; then
		[ -e "$CONF/20-pdo_mysql.ini" ] || suexec ln -sf "$MODS/pdo_mysql.ini" "$CONF/20-pdo_mysql.ini"
	else
		[ -h "$CONF/20-pdo_mysql.ini" ] && suexec rm -f $CONF/20-pdo_mysql.ini
	fi
	if [ \( "${PHP_MODULE_PDO_ODBC:-0}" != 0 -a -z "${PHP_CLI_MODULE_PDO_ODBC}" \) -o "${PHP_CLI_MODULE_PDO_ODBC:-0}" != 0 ]; then
		[ -e "$CONF/20-pdo_odbc.ini" ] || suexec ln -sf "$MODS/pdo_odbc.ini" "$CONF/20-pdo_odbc.ini"
	else
		[ -h "$CONF/20-pdo_odbc.ini" ] && suexec rm -f $CONF/20-pdo_odbc.ini
	fi
	if [ \( "${PHP_MODULE_PDO_PGSQL:-0}" != 0 -a -z "${PHP_CLI_MODULE_PDO_PGSQL}" \) -o "${PHP_CLI_MODULE_PDO_PGSQL:-0}" != 0 ]; then
		[ -e "$CONF/20-pdo_pgsql.ini" ] || suexec ln -sf "$MODS/pdo_pgsql.ini" "$CONF/20-pdo_pgsql.ini"
	else
		[ -h "$CONF/20-pdo_pgsql.ini" ] && suexec rm -f $CONF/20-pdo_pgsql.ini
	fi
	if [ \( "${PHP_MODULE_PDO_SQLITE:-0}" != 0 -a -z "${PHP_CLI_MODULE_PDO_SQLITE}" \) -o "${PHP_CLI_MODULE_PDO_SQLITE:-0}" != 0 ]; then
		[ -e "$CONF/20-pdo_sqlite.ini" ] || suexec ln -sf "$MODS/pdo_sqlite.ini" "$CONF/20-pdo_sqlite.ini"
	else
		[ -h "$CONF/20-pdo_sqlite.ini" ] && suexec rm -f $CONF/20-pdo_sqlite.ini
	fi
	if [ \( "${PHP_MODULE_PGSQL:-0}" != 0 -a -z "${PHP_CLI_MODULE_PGSQL}" \) -o "${PHP_CLI_MODULE_PGSQL:-0}" != 0 ]; then
		[ -e "$CONF/20-pgsql.ini" ] || suexec ln -sf "$MODS/pgsql.ini" "$CONF/20-pgsql.ini"
	else
		[ -h "$CONF/20-pgsql.ini" ] && suexec rm -f $CONF/20-pgsql.ini
	fi
	if [ \( "${PHP_MODULE_PHALCON:-0}" != 0 -a -z "${PHP_CLI_MODULE_PHALCON}" \) -o "${PHP_CLI_MODULE_PHALCON:-0}" != 0 ]; then
		[ -e "$CONF/35-phalcon.ini" ] || suexec ln -sf "$MODS/phalcon.ini" "$CONF/35-phalcon.ini"
	else
		[ -h "$CONF/35-phalcon.ini" ] && suexec rm -f $CONF/35-phalcon.ini
	fi
	if [ \( "${PHP_MODULE_PHAR:-0}" != 0 -a -z "${PHP_CLI_MODULE_PHAR}" \) -o "${PHP_CLI_MODULE_PHAR:-0}" != 0 ]; then
		[ -e "$CONF/20-phar.ini" ] || suexec ln -sf "$MODS/phar.ini" "$CONF/20-phar.ini"
	else
		[ -h "$CONF/20-phar.ini" ] && suexec rm -f $CONF/20-phar.ini
	fi
	if [ \( "${PHP_MODULE_POSIX:-0}" != 0 -a -z "${PHP_CLI_MODULE_POSIX}" \) -o "${PHP_CLI_MODULE_POSIX:-0}" != 0 ]; then
		[ -e "$CONF/20-posix.ini" ] || suexec ln -sf "$MODS/posix.ini" "$CONF/20-posix.ini"
	else
		[ -h "$CONF/20-posix.ini" ] && suexec rm -f $CONF/20-posix.ini
	fi
	if [ \( "${PHP_MODULE_PQ:-0}" != 0 -a -z "${PHP_CLI_MODULE_PQ}" \) -o "${PHP_CLI_MODULE_PQ:-0}" != 0 ]; then
		[ -e "$CONF/25-pq.ini" ] || suexec ln -sf "$MODS/pq.ini" "$CONF/25-pq.ini"
	else
		[ -h "$CONF/25-pq.ini" ] && suexec rm -f $CONF/25-pq.ini
	fi
	if [ \( "${PHP_MODULE_PROTOBUF:-0}" != 0 -a -z "${PHP_CLI_MODULE_PROTOBUF}" \) -o "${PHP_CLI_MODULE_PROTOBUF:-0}" != 0 ]; then
		[ -e "$CONF/30-protobuf.ini" ] || suexec ln -sf "$MODS/protobuf.ini" "$CONF/30-protobuf.ini"
	else
		[ -h "$CONF/30-protobuf.ini" ] && suexec rm -f $CONF/30-protobuf.ini
	fi
	if [ \( "${PHP_MODULE_PS:-0}" != 0 -a -z "${PHP_CLI_MODULE_PS}" \) -o "${PHP_CLI_MODULE_PS:-0}" != 0 ]; then
		[ -e "$CONF/20-ps.ini" ] || suexec ln -sf "$MODS/ps.ini" "$CONF/20-ps.ini"
	else
		[ -h "$CONF/20-ps.ini" ] && suexec rm -f $CONF/20-ps.ini
	fi
	if [ \( "${PHP_MODULE_PSPELL:-0}" != 0 -a -z "${PHP_CLI_MODULE_PSPELL}" \) -o "${PHP_CLI_MODULE_PSPELL:-0}" != 0 ]; then
		[ -e "$CONF/20-pspell.ini" ] || suexec ln -sf "$MODS/pspell.ini" "$CONF/20-pspell.ini"
	else
		[ -h "$CONF/20-pspell.ini" ] && suexec rm -f $CONF/20-pspell.ini
	fi
	if [ \( "${PHP_MODULE_PSR:-0}" != 0 -a -z "${PHP_CLI_MODULE_PSR}" \) -o "${PHP_CLI_MODULE_PSR:-0}" != 0 ]; then
		[ -e "$CONF/15-psr.ini" ] || suexec ln -sf "$MODS/psr.ini" "$CONF/15-psr.ini"
	else
		[ -h "$CONF/15-psr.ini" ] && suexec rm -f $CONF/15-psr.ini
	fi
	if [ \( "${PHP_MODULE_RAPHF:-0}" != 0 -a -z "${PHP_CLI_MODULE_RAPHF}" \) -o "${PHP_CLI_MODULE_RAPHF:-0}" != 0 ]; then
		[ -e "$CONF/20-raphf.ini" ] || suexec ln -sf "$MODS/raphf.ini" "$CONF/20-raphf.ini"
	else
		[ -h "$CONF/20-raphf.ini" ] && suexec rm -f $CONF/20-raphf.ini
	fi
	if [ \( "${PHP_MODULE_RDKAFKA:-0}" != 0 -a -z "${PHP_CLI_MODULE_RDKAFKA}" \) -o "${PHP_CLI_MODULE_RDKAFKA:-0}" != 0 ]; then
		[ -e "$CONF/30-rdkafka.ini" ] || suexec ln -sf "$MODS/rdkafka.ini" "$CONF/30-rdkafka.ini"
	else
		[ -h "$CONF/30-rdkafka.ini" ] && suexec rm -f $CONF/30-rdkafka.ini
	fi
	if [ \( "${PHP_MODULE_READLINE:-0}" != 0 -a -z "${PHP_CLI_MODULE_READLINE}" \) -o "${PHP_CLI_MODULE_READLINE:-0}" != 0 ]; then
		[ -e "$CONF/20-readline.ini" ] || suexec ln -sf "$MODS/readline.ini" "$CONF/20-readline.ini"
	else
		[ -h "$CONF/20-readline.ini" ] && suexec rm -f $CONF/20-readline.ini
	fi
	if [ \( "${PHP_MODULE_REDIS:-0}" != 0 -a -z "${PHP_CLI_MODULE_REDIS}" \) -o "${PHP_CLI_MODULE_REDIS:-0}" != 0 ]; then
		[ -e "$CONF/25-redis.ini" ] || suexec ln -sf "$MODS/redis.ini" "$CONF/25-redis.ini"
	else
		[ -h "$CONF/25-redis.ini" ] && suexec rm -f $CONF/25-redis.ini
	fi
	if [ \( "${PHP_MODULE_RRD:-0}" != 0 -a -z "${PHP_CLI_MODULE_RRD}" \) -o "${PHP_CLI_MODULE_RRD:-0}" != 0 ]; then
		[ -e "$CONF/20-rrd.ini" ] || suexec ln -sf "$MODS/rrd.ini" "$CONF/20-rrd.ini"
	else
		[ -h "$CONF/20-rrd.ini" ] && suexec rm -f $CONF/20-rrd.ini
	fi
	if [ \( "${PHP_MODULE_SHMOP:-0}" != 0 -a -z "${PHP_CLI_MODULE_SHMOP}" \) -o "${PHP_CLI_MODULE_SHMOP:-0}" != 0 ]; then
		[ -e "$CONF/20-shmop.ini" ] || suexec ln -sf "$MODS/shmop.ini" "$CONF/20-shmop.ini"
	else
		[ -h "$CONF/20-shmop.ini" ] && suexec rm -f $CONF/20-shmop.ini
	fi
	if [ \( "${PHP_MODULE_SIMPLEXML:-0}" != 0 -a -z "${PHP_CLI_MODULE_SIMPLEXML}" \) -o "${PHP_CLI_MODULE_SIMPLEXML:-0}" != 0 ]; then
		[ -e "$CONF/20-simplexml.ini" ] || suexec ln -sf "$MODS/simplexml.ini" "$CONF/20-simplexml.ini"
	else
		[ -h "$CONF/20-simplexml.ini" ] && suexec rm -f $CONF/20-simplexml.ini
	fi
	if [ \( "${PHP_MODULE_SMBCLIENT:-0}" != 0 -a -z "${PHP_CLI_MODULE_SMBCLIENT}" \) -o "${PHP_CLI_MODULE_SMBCLIENT:-0}" != 0 ]; then
		[ -e "$CONF/20-smbclient.ini" ] || suexec ln -sf "$MODS/smbclient.ini" "$CONF/20-smbclient.ini"
	else
		[ -h "$CONF/20-smbclient.ini" ] && suexec rm -f $CONF/20-smbclient.ini
	fi
	if [ \( "${PHP_MODULE_SNMP:-0}" != 0 -a -z "${PHP_CLI_MODULE_SNMP}" \) -o "${PHP_CLI_MODULE_SNMP:-0}" != 0 ]; then
		[ -e "$CONF/20-snmp.ini" ] || suexec ln -sf "$MODS/snmp.ini" "$CONF/20-snmp.ini"
	else
		[ -h "$CONF/20-snmp.ini" ] && suexec rm -f $CONF/20-snmp.ini
	fi
	if [ \( "${PHP_MODULE_SOAP:-0}" != 0 -a -z "${PHP_CLI_MODULE_SOAP}" \) -o "${PHP_CLI_MODULE_SOAP:-0}" != 0 ]; then
		[ -e "$CONF/20-soap.ini" ] || suexec ln -sf "$MODS/soap.ini" "$CONF/20-soap.ini"
	else
		[ -h "$CONF/20-soap.ini" ] && suexec rm -f $CONF/20-soap.ini
	fi
	if [ \( "${PHP_MODULE_SOCKETS:-0}" != 0 -a -z "${PHP_CLI_MODULE_SOCKETS}" \) -o "${PHP_CLI_MODULE_SOCKETS:-0}" != 0 ]; then
		[ -e "$CONF/20-sockets.ini" ] || suexec ln -sf "$MODS/sockets.ini" "$CONF/20-sockets.ini"
	else
		[ -h "$CONF/20-sockets.ini" ] && suexec rm -f $CONF/20-sockets.ini
	fi
	if [ \( "${PHP_MODULE_SOLR:-0}" != 0 -a -z "${PHP_CLI_MODULE_SOLR}" \) -o "${PHP_CLI_MODULE_SOLR:-0}" != 0 ]; then
		[ -e "$CONF/20-solr.ini" ] || suexec ln -sf "$MODS/solr.ini" "$CONF/20-solr.ini"
	else
		[ -h "$CONF/20-solr.ini" ] && suexec rm -f $CONF/20-solr.ini
	fi
	if [ \( "${PHP_MODULE_SQLITE3:-0}" != 0 -a -z "${PHP_CLI_MODULE_SQLITE3}" \) -o "${PHP_CLI_MODULE_SQLITE3:-0}" != 0 ]; then
		[ -e "$CONF/20-sqlite3.ini" ] || suexec ln -sf "$MODS/sqlite3.ini" "$CONF/20-sqlite3.ini"
	else
		[ -h "$CONF/20-sqlite3.ini" ] && suexec rm -f $CONF/20-sqlite3.ini
	fi
	if [ \( "${PHP_MODULE_SSH2:-0}" != 0 -a -z "${PHP_CLI_MODULE_SSH2}" \) -o "${PHP_CLI_MODULE_SSH2:-0}" != 0 ]; then
		[ -e "$CONF/20-ssh2.ini" ] || suexec ln -sf "$MODS/ssh2.ini" "$CONF/20-ssh2.ini"
	else
		[ -h "$CONF/20-ssh2.ini" ] && suexec rm -f $CONF/20-ssh2.ini
	fi
	if [ \( "${PHP_MODULE_STOMP:-0}" != 0 -a -z "${PHP_CLI_MODULE_STOMP}" \) -o "${PHP_CLI_MODULE_STOMP:-0}" != 0 ]; then
		[ -e "$CONF/20-stomp.ini" ] || suexec ln -sf "$MODS/stomp.ini" "$CONF/20-stomp.ini"
	else
		[ -h "$CONF/20-stomp.ini" ] && suexec rm -f $CONF/20-stomp.ini
	fi
	if [ \( "${PHP_MODULE_SWOOLE:-0}" != 0 -a -z "${PHP_CLI_MODULE_SWOOLE}" \) -o "${PHP_CLI_MODULE_SWOOLE:-0}" != 0 ]; then
		[ -e "$CONF/25-swoole.ini" ] || suexec ln -sf "$MODS/swoole.ini" "$CONF/25-swoole.ini"
	else
		[ -h "$CONF/25-swoole.ini" ] && suexec rm -f $CONF/25-swoole.ini
	fi
	if [ \( "${PHP_MODULE_SYSVMSG:-0}" != 0 -a -z "${PHP_CLI_MODULE_SYSVMSG}" \) -o "${PHP_CLI_MODULE_SYSVMSG:-0}" != 0 ]; then
		[ -e "$CONF/20-sysvmsg.ini" ] || suexec ln -sf "$MODS/sysvmsg.ini" "$CONF/20-sysvmsg.ini"
	else
		[ -h "$CONF/20-sysvmsg.ini" ] && suexec rm -f $CONF/20-sysvmsg.ini
	fi
	if [ \( "${PHP_MODULE_SYSVSEM:-0}" != 0 -a -z "${PHP_CLI_MODULE_SYSVSEM}" \) -o "${PHP_CLI_MODULE_SYSVSEM:-0}" != 0 ]; then
		[ -e "$CONF/20-sysvsem.ini" ] || suexec ln -sf "$MODS/sysvsem.ini" "$CONF/20-sysvsem.ini"
	else
		[ -h "$CONF/20-sysvsem.ini" ] && suexec rm -f $CONF/20-sysvsem.ini
	fi
	if [ \( "${PHP_MODULE_SYSVSHM:-0}" != 0 -a -z "${PHP_CLI_MODULE_SYSVSHM}" \) -o "${PHP_CLI_MODULE_SYSVSHM:-0}" != 0 ]; then
		[ -e "$CONF/20-sysvshm.ini" ] || suexec ln -sf "$MODS/sysvshm.ini" "$CONF/20-sysvshm.ini"
	else
		[ -h "$CONF/20-sysvshm.ini" ] && suexec rm -f $CONF/20-sysvshm.ini
	fi
	if [ \( "${PHP_MODULE_TIDY:-0}" != 0 -a -z "${PHP_CLI_MODULE_TIDY}" \) -o "${PHP_CLI_MODULE_TIDY:-0}" != 0 ]; then
		[ -e "$CONF/20-tidy.ini" ] || suexec ln -sf "$MODS/tidy.ini" "$CONF/20-tidy.ini"
	else
		[ -h "$CONF/20-tidy.ini" ] && suexec rm -f $CONF/20-tidy.ini
	fi
	if [ \( "${PHP_MODULE_TOKENIZER:-0}" != 0 -a -z "${PHP_CLI_MODULE_TOKENIZER}" \) -o "${PHP_CLI_MODULE_TOKENIZER:-0}" != 0 ]; then
		[ -e "$CONF/20-tokenizer.ini" ] || suexec ln -sf "$MODS/tokenizer.ini" "$CONF/20-tokenizer.ini"
	else
		[ -h "$CONF/20-tokenizer.ini" ] && suexec rm -f $CONF/20-tokenizer.ini
	fi
	if [ \( "${PHP_MODULE_UOPZ:-0}" != 0 -a -z "${PHP_CLI_MODULE_UOPZ}" \) -o "${PHP_CLI_MODULE_UOPZ:-0}" != 0 ]; then
		[ -e "$CONF/20-uopz.ini" ] || suexec ln -sf "$MODS/uopz.ini" "$CONF/20-uopz.ini"
	else
		[ -h "$CONF/20-uopz.ini" ] && suexec rm -f $CONF/20-uopz.ini
	fi
	if [ \( "${PHP_MODULE_UPLOADPROGRESS:-0}" != 0 -a -z "${PHP_CLI_MODULE_UPLOADPROGRESS}" \) -o "${PHP_CLI_MODULE_UPLOADPROGRESS:-0}" != 0 ]; then
		[ -e "$CONF/20-uploadprogress.ini" ] || suexec ln -sf "$MODS/uploadprogress.ini" "$CONF/20-uploadprogress.ini"
	else
		[ -h "$CONF/20-uploadprogress.ini" ] && suexec rm -f $CONF/20-uploadprogress.ini
	fi
	if [ \( "${PHP_MODULE_UUID:-0}" != 0 -a -z "${PHP_CLI_MODULE_UUID}" \) -o "${PHP_CLI_MODULE_UUID:-0}" != 0 ]; then
		[ -e "$CONF/20-uuid.ini" ] || suexec ln -sf "$MODS/uuid.ini" "$CONF/20-uuid.ini"
	else
		[ -h "$CONF/20-uuid.ini" ] && suexec rm -f $CONF/20-uuid.ini
	fi
	if [ \( "${PHP_MODULE_VIPS:-0}" != 0 -a -z "${PHP_CLI_MODULE_VIPS}" \) -o "${PHP_CLI_MODULE_VIPS:-0}" != 0 ]; then
		[ -e "$CONF/30-vips.ini" ] || suexec ln -sf "$MODS/vips.ini" "$CONF/30-vips.ini"
	else
		[ -h "$CONF/30-vips.ini" ] && suexec rm -f $CONF/30-vips.ini
	fi
	if [ \( "${PHP_MODULE_XDEBUG:-0}" != 0 -a -z "${PHP_CLI_MODULE_XDEBUG}" \) -o "${PHP_CLI_MODULE_XDEBUG:-0}" != 0 ]; then
		[ -e "$CONF/20-xdebug.ini" ] || suexec ln -sf "$MODS/xdebug.ini" "$CONF/20-xdebug.ini"
	else
		[ -h "$CONF/20-xdebug.ini" ] && suexec rm -f $CONF/20-xdebug.ini
	fi
	if [ \( "${PHP_MODULE_XHPROF:-0}" != 0 -a -z "${PHP_CLI_MODULE_XHPROF}" \) -o "${PHP_CLI_MODULE_XHPROF:-0}" != 0 ]; then
		[ -e "$CONF/20-xhprof.ini" ] || suexec ln -sf "$MODS/xhprof.ini" "$CONF/20-xhprof.ini"
	else
		[ -h "$CONF/20-xhprof.ini" ] && suexec rm -f $CONF/20-xhprof.ini
	fi
	if [ \( "${PHP_MODULE_XLSWRITER:-0}" != 0 -a -z "${PHP_CLI_MODULE_XLSWRITER}" \) -o "${PHP_CLI_MODULE_XLSWRITER:-0}" != 0 ]; then
		[ -e "$CONF/20-xlswriter.ini" ] || suexec ln -sf "$MODS/xlswriter.ini" "$CONF/20-xlswriter.ini"
	else
		[ -h "$CONF/20-xlswriter.ini" ] && suexec rm -f $CONF/20-xlswriter.ini
	fi
	if [ \( "${PHP_MODULE_XML:-0}" != 0 -a -z "${PHP_CLI_MODULE_XML}" \) -o "${PHP_CLI_MODULE_XML:-0}" != 0 ]; then
		[ -e "$CONF/15-xml.ini" ] || suexec ln -sf "$MODS/xml.ini" "$CONF/15-xml.ini"
	else
		[ -h "$CONF/15-xml.ini" ] && suexec rm -f $CONF/15-xml.ini
	fi
	if [ \( "${PHP_MODULE_XMLREADER:-0}" != 0 -a -z "${PHP_CLI_MODULE_XMLREADER}" \) -o "${PHP_CLI_MODULE_XMLREADER:-0}" != 0 ]; then
		[ -e "$CONF/20-xmlreader.ini" ] || suexec ln -sf "$MODS/xmlreader.ini" "$CONF/20-xmlreader.ini"
	else
		[ -h "$CONF/20-xmlreader.ini" ] && suexec rm -f $CONF/20-xmlreader.ini
	fi
	if [ \( "${PHP_MODULE_XMLRPC:-0}" != 0 -a -z "${PHP_CLI_MODULE_XMLRPC}" \) -o "${PHP_CLI_MODULE_XMLRPC:-0}" != 0 ]; then
		[ -e "$CONF/20-xmlrpc.ini" ] || suexec ln -sf "$MODS/xmlrpc.ini" "$CONF/20-xmlrpc.ini"
	else
		[ -h "$CONF/20-xmlrpc.ini" ] && suexec rm -f $CONF/20-xmlrpc.ini
	fi
	if [ \( "${PHP_MODULE_XMLWRITER:-0}" != 0 -a -z "${PHP_CLI_MODULE_XMLWRITER}" \) -o "${PHP_CLI_MODULE_XMLWRITER:-0}" != 0 ]; then
		[ -e "$CONF/20-xmlwriter.ini" ] || suexec ln -sf "$MODS/xmlwriter.ini" "$CONF/20-xmlwriter.ini"
	else
		[ -h "$CONF/20-xmlwriter.ini" ] && suexec rm -f $CONF/20-xmlwriter.ini
	fi
	if [ \( "${PHP_MODULE_XSL:-0}" != 0 -a -z "${PHP_CLI_MODULE_XSL}" \) -o "${PHP_CLI_MODULE_XSL:-0}" != 0 ]; then
		[ -e "$CONF/20-xsl.ini" ] || suexec ln -sf "$MODS/xsl.ini" "$CONF/20-xsl.ini"
	else
		[ -h "$CONF/20-xsl.ini" ] && suexec rm -f $CONF/20-xsl.ini
	fi
	if [ \( "${PHP_MODULE_YAC:-0}" != 0 -a -z "${PHP_CLI_MODULE_YAC}" \) -o "${PHP_CLI_MODULE_YAC:-0}" != 0 ]; then
		[ -e "$CONF/20-yac.ini" ] || suexec ln -sf "$MODS/yac.ini" "$CONF/20-yac.ini"
	else
		[ -h "$CONF/20-yac.ini" ] && suexec rm -f $CONF/20-yac.ini
	fi
	if [ \( "${PHP_MODULE_YAML:-0}" != 0 -a -z "${PHP_CLI_MODULE_YAML}" \) -o "${PHP_CLI_MODULE_YAML:-0}" != 0 ]; then
		[ -e "$CONF/20-yaml.ini" ] || suexec ln -sf "$MODS/yaml.ini" "$CONF/20-yaml.ini"
	else
		[ -h "$CONF/20-yaml.ini" ] && suexec rm -f $CONF/20-yaml.ini
	fi
	if [ \( "${PHP_MODULE_ZIP:-0}" != 0 -a -z "${PHP_CLI_MODULE_ZIP}" \) -o "${PHP_CLI_MODULE_ZIP:-0}" != 0 ]; then
		[ -e "$CONF/20-zip.ini" ] || suexec ln -sf "$MODS/zip.ini" "$CONF/20-zip.ini"
	else
		[ -h "$CONF/20-zip.ini" ] && suexec rm -f $CONF/20-zip.ini
	fi
	if [ \( "${PHP_MODULE_ZMQ:-0}" != 0 -a -z "${PHP_CLI_MODULE_ZMQ}" \) -o "${PHP_CLI_MODULE_ZMQ:-0}" != 0 ]; then
		[ -e "$CONF/20-zmq.ini" ] || suexec ln -sf "$MODS/zmq.ini" "$CONF/20-zmq.ini"
	else
		[ -h "$CONF/20-zmq.ini" ] && suexec rm -f $CONF/20-zmq.ini
	fi
	if [ \( "${PHP_MODULE_ZSTD:-0}" != 0 -a -z "${PHP_CLI_MODULE_ZSTD}" \) -o "${PHP_CLI_MODULE_ZSTD:-0}" != 0 ]; then
		[ -e "$CONF/30-zstd.ini" ] || suexec ln -sf "$MODS/zstd.ini" "$CONF/30-zstd.ini"
	else
		[ -h "$CONF/30-zstd.ini" ] && suexec rm -f $CONF/30-zstd.ini
	fi
fi
