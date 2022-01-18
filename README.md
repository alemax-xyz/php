## PHP FPM/CLI docker images

The image is based on [ppa:ondrej/php](https://launchpad.net/~ondrej/+archive/ubuntu/php) builds and Ubuntu packages on top of [clover/common](https://hub.docker.com/r/clover/common/).

All PHP modules are enabled by default at `/etc/php/{8.x,7.x,5.6}/{cli,fpm}/conf.d/`.
PHP FPM pool is pre-configured in `/etc/php/{8.x,7.x,5.6}/fpm/pool.d/www.conf` to use `www` user and group.

### Available PHP modules

`amqp`, `apcu`, `apcu-bc`, `ast`, `bcmath`, `blackfire`, `bz2`, `calendar`, `ctype`, `curl`, `dba`, `decimal`, `dom`,
`ds`, `enchant`, `exif`, `facedetect`, `ffi`, `fileinfo`, `ftp`, `gd`, `gearman`, `geoip`, `gettext`, `gmagick`, `gmp`,
`gnupg`, `grpc`, `http`, `iconv`, `igbinary`, `imagick`, `imap`, `interbase`, `intl`, `json`, `lua`, `ldap`,
`libvirt-php`, `lz4`, `mailparse`, `mbstring`, `mcrypt`, `memcache`, `memcached`, `mongo`, `mongodb`, `msgpack`,
`mssql`, `mysql`, `mysqli`, `mysqlnd`, `oauth`, `odbc`, `opcache`, `pinba`, `psr`, `pconv`, `pdo`, `pdo-dblib`,
`pdo-firebird`, `pdo-mysql`, `pdo-odbc`, `pdo-pgsql`, `pdo-sqlite`, `pgsql`, `phalcon`, `phar`, `posix`, `propro`,
`protobuf`, `ps`, `pspell`, `radius`, `raphf`, `readline`, `recode`, `redis`, `rrd`, `sass`, `shmop`, `simplexml`,
`smbclient`, `snmp`, `soap`, `sodium`, `sockets`, `solr`, `sqlite3`, `ssh2`, `stomp`, `swoole`, `sysvmsg`, `sysvsem`,
`sysvshm`, `tideways`, `tidy`, `tokenizer`, `uploadprogress`, `uopz`, `uuid`, `vips`, `wddx`, `xcache`, `xdebug`,
`xhprof`, `xml`, `xmlreader`, `xmlwriter`, `xmlrpc`, `xsl`, `yac`, `yaml`, `zip`, `zmq`, `zstd`.

See [MODULES.md](https://github.com/alemax-xyz/php/blob/master/MODULES.md) for more details.

### Data volumes

| Location | Description
| -------- | -----------
| `/var/lib/php/sessions` | PHP sessions

### Exposed ports

| Port | Description
| ---- | -----------
| 9000 | TCP port _php-fpm_ is listening on

### Enviroment variables

| Name | Default value | Description
| ---- | ------------- | -----------
| `PUID` | `50` | Desired _UID_ of the process owner _*_
| `PGID` | primary group id of the _UID_ user (`50`) | Desired _GID_ of the process owner _*_
| `CRON` | _not set_ | Will start _cron_ inside the container if set to `1`
| `CHOWN` | `/var/lib/php/sessions /var/www` | Space-separated list of directories to _chown_ with `PUID`/`PGID` on start
| `PHP_*` | _not set_ | Allows setting any `php.ini` setting(s). Applies to both FPM and CLI. `PHP_CLI_*` and `PHP_FPM_*` take precedence if set _**_
| `PHP_CLI_*` | _not set_ | Allows setting any `php.ini` CLI setting(s). Will be set in `/etc/php/{8.x,7.x,5.6}/cli/conf.d/99-custom.ini` file _**_
| `PHP_FPM_*` | _not set_ | Allows setting any `php.ini` FPM or `php-fpm.conf` setting(s). Will be set in `/etc/php/{8.x,7.x,5.6}/fpm/conf.d/99-custom.ini` or `/etc/php/{8.x,7.x,5.6}/fpm/php-fpm.conf` files _**_
| `PHP_FPM_POOL_*` | _not set_ | Allows setting any FPM pool setting(s). Will be set in `/etc/php/{8.x,7.x,5.6}/fpm/pool.d/www.conf` file
| `PHP_MODULES_ALL` | `1` | Wether all modules should be enabled by default. Applies to both FPM and CLI. Enabled modules are symlinks in `/etc/php/{8.x,7.x,5.6}/{cli,fpm}/conf.d/` directory. `PHP_CLI_MODULES_ALL` and `PHP_FPM_MODULES_ALL` take precedence if set
| `PHP_CLI_MODULES_ALL` | _not set_ | Wether all CLI modules should be enabled by default
| `PHP_FPM_MODULES_ALL` | _not set_ | Wether all FPM modules should be enabled by default
| `PHP_MODULE_*` | `1` | Wether to enable or disable specific module. Applies to both FPM and CLI. `PHP_CLI_MODULE_*` and `PHP_FPM_MODULE_*` take precedence if set _**_
| `PHP_CLI_MODULE_*` | `1` | Wether to enable or disable specific CLI module _**_
| `PHP_FPM_MODULE_*` | `1` | Wether to enable or disable specific FPM module _**_

_*_ `PUID`/`PGID` could be used to preserve data volume ownership on host.

_**_ The name of the `PHP_*` variable is an uppercased version of the corresponding setting with all non-alphanumeric characters replaced by `_` (underscore).
For example, to set `session.save_path` INI setting for FPM use `PHP_FPM_SESSION_SAVE_PATH` environment variable.
