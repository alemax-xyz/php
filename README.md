## PHP FPM/CLI docker images

The image is based on [ppa:ondrej/php](https://launchpad.net/~ondrej/+archive/ubuntu/php) builds and debian packages on top of [clover/common](https://hub.docker.com/r/clover/common/).

All PHP modules are enabled by default at `/etc/php/{8.x,7.x,5.6}/{cli,fpm}/conf.d/`.
PHP FPM pool is pre-configured in `/etc/php/{8.x,7.x,5.6}/fpm/pool.d/www.conf` to use `www` user and group.

### Available PHP modules

`amqp`, `apcu`, `apcu-bc`, `ast`, `bcmath`, `bz2`, `calendar`, `ctype`, `curl`, `dba`, `decimal`, `dom`, `ds`,
`enchant`, `exif`, `facedetect`, `ffi`, `fileinfo`, `ftp`, `gd`, `gearman`, `geoip`, `gettext`, `gmagick`, `gmp`,
`gnupg`, `grpc`, `http`, `iconv`, `igbinary`, `imagick`, `imap`, `interbase`, `intl`, `json`, `lua`, `ldap`,
`libvirt-php`, `lz4`, `mailparse`, `mbstring`, `mcrypt`, `memcache`, `memcached`, `mongo`, `mongodb`, `msgpack`,
`mssql`, `mysql`, `mysqli`, `mysqlnd`, `oauth`, `odbc`, `opcache`, `pinba`, `psr`, `pconv`, `pdo`, `pdo-dblib`,
`pdo-firebird`, `pdo-mysql`, `pdo-odbc`, `pdo-pgsql`, `pdo-sqlite`, `pgsql`, `phalcon`, `phar`, `posix`, `propro`,
`protobuf`, `ps`, `pspell`, `radius`, `raphf`, `readline`, `recode`, `redis`, `rrd`, `sass`, `shmop`, `simplexml`,
`smbclient`, `snmp`, `soap`, `sodium`, `sockets`, `solr`, `sqlite3`, `ssh2`, `stomp`, `swoole`, `sysvmsg`, `sysvsem`,
`sysvshm`, `tideways`, `tidy`, `tokenizer`, `uploadprogress`, `uopz`, `uuid`, `vips`, `wddx`, `xcache`, `xdebug`,
`xhprof`, `xml`, `xmlreader`, `xmlwriter`, `xmlrpc`, `xsl`, `yac`, `yaml`, `zip`, `zmq`, `zstd`.

See [MODULES.md](https://github.com/alemax-xyz/php/blob/master/MODULES.md) for more details.

### Exposed ports

| Port | Description
| ---- | -----------
| 9000 | TCP port _php-fpm_ is listening on

### Enviroment variables

| Name | Default value | Description
| ---- | ------------- | -----------
| `PUID` | _not set_ | desired user id of the process owner
| `PGID` | _not set_ | desired group id of the process pwner (primary group of the `PUID` user)
| `PUSER` | _not set_ | desired `PUID` user name
| `PGROUP` | _not set_ | desired `PGID` group name
| `CHOWN` | _not set_ | space-separated list of directories to change ownership to `PUID`/`PGID` during container startup
| `CRON` | _not set_ (`0`) | will start _cron_ inside the container if set to `1`
| `TZ` / `TIMEZONE` | _not set_ (`UTC`) | desired container timezone
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

### Additional version tags

 * `{8.x,7.x,5.6}-git` are based on `{8.x,7.x,5.6}` with additional `openssh-client` and `git` binaries;
 * `{8.x,7.x,5.6}-composer` are based on `{8.x,7.x,5.6}-git`, containing pre-installed `composer`;
 * `{8.x,7.x}-contrib` are based on `{8.x,7.x,5.6}-git`, containing `pdo_snowflake` extension and `mysql` client (`linux/amd64` only);


### Supported platforms

 * `linux/amd64`;
 * `linux/arm64/v8`;
