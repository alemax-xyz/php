## PHP FPM/CLI docker images
The image is based on [ppa:ondrej/php](https://launchpad.net/~ondrej/+archive/ubuntu/php) builds and Ubuntu Bionic packages on top of [clover/common](https://hub.docker.com/r/clover/common/).

All PHP modules are enabled by default at `/etc/php/{7.x,5.6}/{cli,fpm}/conf.d/`.
PHP FPM pool is pre-configured in `/etc/php/{7.x,5.6}/fpm/pool.d/www.conf` to use `www` user and group.

### Available PHP modules
amqp, apcu, apcu-bc, ast, bcmath, blackfire, bz2, calendar, ctype, curl, dba, dom, ds, enchant, exif, ffi, fileinfo, ftp, gd, gearman, geoip, gettext, gmagick, gmp, gnupg, http, iconv, igbinary, imagick, imap, interbase, intl, json, lua, ldap, libvirt-php, mailparse, mbstring, mcrypt, memcache, memcached, mongo, mongodb, msgpack, mssql, mysql, mysqli, mysqlnd, oauth, odbc, opcache, pinba, psr, pconv, pdo, pdo-dblib, pdo-firebird, pdo-mysql, pdo-odbc, pdo-pgsql, pdo-sqlite, pgsql, phalcon, phar, posix, propro, pspell, radius, raphf, readline, recode, redis, rrd, sass, shmop, simplexml, smbclient, snmp, soap, sodium, sockets, solr, sqlite3, ssh2, stomp, sysvmsg, sysvsem, sysvshm, tideways, tidy, tokenizer, uploadprogress, uuid, wddx, xcache, xdebug, xhprof, xml, xmlreader, xmlwriter, xmlrpc, xsl, yac, yaml, zip, zmq.
See [MODULES.md](https://github.com/alemax-xyz/php/blob/master/MODULES.md) for more details.
