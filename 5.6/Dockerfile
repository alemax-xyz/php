FROM clover/base AS base

RUN groupadd \
        --gid 50 \
        --system \
        www \
 && useradd \
        --home-dir /var/www \
        --no-create-home \
        --system \
        --shell /bin/false \
        --uid 50 \
        --gid 50 \
        www

FROM library/ubuntu:focal AS build

ENV LANG=C.UTF-8

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y \
        wget \
        python3-software-properties \
        software-properties-common \
        apt-utils

RUN export DEBIAN_FRONTEND=noninteractive \
 && add-apt-repository -y ppa:ondrej/php \
 && wget -qO - https://packages.blackfire.io/gpg.key | apt-key add - \
 && add-apt-repository -y "deb http://packages.blackfire.io/debian any main" \
 && apt-get update

RUN mkdir -p /build /rootfs
WORKDIR /build
RUN apt-get download \
        firebird3.0-common \
        freetds-common \
        gnupg2 \
        gnupg-agent \
        gpg \
        gpg-agent \
        pinentry-tty \
        imagemagick-6-common \
        libapparmor1 \
        libasn1-8-heimdal \
        libaspell15 \
        libassuan0 \
        libavahi-client3 \
        libavahi-common3 \
        libavahi-common-data \
        libacl1 \
        libattr1 \
        libbsd0 \
        libcairo2 \
        libcap-ng0 \
        libc-client2007e \
        libcom-err2 \
        libcurl3-gnutls \
        libcurl4 \
        libdatrie1 \
        libdbi1 \
        libdbus-1-3 \
        libdevmapper1.02.1 \
        libedit2 \
        libenchant-2-2 \
#        libevent-2.1-7 \
        libexpat1 \
        libfbclient2 \
        libffi7 \
        libfftw3-double3 \
        libfontconfig1 \
        libfreetype6 \
        libgcrypt20 \
        libgd3 \
        libgearman8 \
        libgeoip1 \
        libglib2.0-0 \
        libgmp10 \
        libgnutls30 \
        libgomp1 \
        libgpg-error0 \
        libgpgme11 \
        libgraphicsmagick-q16-3 \
        libgraphite2-3 \
        libgssapi3-heimdal \
        libgssapi-krb5-2 \
        libharfbuzz0b \
        libhcrypto4-heimdal \
        libheimbase1-heimdal \
        libheimntlm0-heimdal \
        libhogweed5 \
        libhunspell-1.7-0 \
        libhx509-5-heimdal \
        libicu66 \
        libidn11 \
        libidn2-0 \
        libjbig0 \
        libgif7 \
        libjpeg8 \
        libjpeg-turbo8 \
        libk5crypto3 \
        libkeyutils1 \
        libkrb5-26-heimdal \
        libkrb5-3 \
        libkrb5support0 \
        libksba8 \
        liblcms2-2 \
        libldap-2.4-2 \
        liblqr-1-0 \
        libltdl7 \
        liblmdb0 \
        liblzma5 \
        liblz4-1 \
        libmagic1 \
        libmagic-mgc \
        libmagickcore-6.q16-6 \
        libmagickcore-6.q16-6-extra \
        libmagickwand-6.q16-6 \
        libmcrypt4 \
        libmemcached11 \
        libnettle7 \
        libnl-3-200 \
        libnghttp2-14 \
        libtommath1 \
        libnpth0 \
        libnuma1 \
        libodbc1 \
        libp11-kit0 \
        libpango-1.0-0 \
        libpangocairo-1.0-0 \
        libpangoft2-1.0-0 \
        libpgm-5.2-0 \
        libpixman-1-0 \
        libpng16-16 \
        libpq5 \
        libpsl5 \
        libqdbm14 \
        librabbitmq4 \
        librecode0 \
        libroken18-heimdal \
        librrd8 \
        librtmp1 \
        libsasl2-2 \
        libsasl2-modules-db \
        libsodium23 \
        libsqlite3-0 \
        libssh-4 \
        libssh2-1 \
        libssl1.1 \
        libsybdb5 \
        libsystemd0 \
        libtasn1-6 \
        libthai0 \
        libthai-data \
        libtidy5deb1 \
        libtiff5 \
        libudev1 \
        libuuid1 \
        libunistring2 \
        libvirt0 \
        libwebp6 \
        libwebpmux3 \
        libwind0-heimdal \
        libwmf0.2-7 \
        libx11-6 \
        libx11-data \
        libxau6 \
        libxcb1 \
        libxcb-render0 \
        libxcb-shm0 \
        libxdmcp6 \
        libxenstore3.0 \
        libxext6 \
        libxml2 \
        libxmlrpc-epi0 \
        libxpm4 \
        libxrender1 \
        libxslt1.1 \
        libyajl2 \
        libyaml-0-2 \
        libzip4 \
        libzmq5 \
        libnorm1 \
        mlock \
        php5.6-amqp \
        php5.6-apcu \
        php5.6-bcmath \
        php5.6-bz2 \
        php5.6-cli \
        php5.6-common \
        php5.6-curl \
        php5.6-dba \
        php5.6-enchant \
        php5.6-fpm \
        php5.6-gd \
        php5.6-gmp \
        php5.6-grpc \
        php5.6-igbinary \
        php5.6-imagick \
        php5.6-imap \
        php5.6-inotify \
        php5.6-interbase \
        php5.6-intl \
        php5.6-json \
        php5.6-ldap \
        php5.6-lz4 \
        php5.6-mailparse \
        php5.6-mbstring \
        php5.6-mcrypt \
        php5.6-memcached \
        php5.6-msgpack \
        php5.6-mysql \
        php5.6-oauth \
        php5.6-odbc \
        php5.6-opcache \
        php5.6-pgsql \
        php5.6-propro \
        php5.6-protobuf \
        php5.6-ps \
        php5.6-pspell \
        php5.6-raphf \
        php5.6-readline \
        php5.6-recode \
        php5.6-redis \
        php5.6-rrd \
        php5.6-smbclient \
        php5.6-snmp \
        php5.6-soap \
        php5.6-sqlite3 \
        php5.6-ssh2 \
        php5.6-sybase \
        php5.6-tidy \
        php5.6-xdebug \
        php5.6-xhprof \
        php5.6-xml \
        php5.6-xmlrpc \
        php5.6-xsl \
        php5.6-yac \
        php5.6-yaml \
        php5.6-zip \
        php5.6-zmq \
        php5.6-gearman \
        php5.6-geoip \
        php5.6-gmagick \
        php5.6-gnupg \
#        php5.6-http \
        php5.6-igbinary \
        php5.6-imagick \
        php5.6-lua \
        liblua5.2-0 \
        php-libvirt-php \
        php5.6-memcache \
        php5.6-memcached \
        php5.6-mongo \
        php5.6-mongodb \
        php5.6-msgpack \
        php5.6-oauth \
        php5.6-pgsql \
        php5.6-phalcon3 \
        php5.6-radius \
        php5.6-raphf \
        php5.6-redis \
        php5.6-rrd \
        php5.6-solr \
        php5.6-ssh2 \
        php5.6-stomp \
        php5.6-uploadprogress \
        php5.6-xcache \
        php5.6-xdebug \
        php5.6-xhprof \
        php5.6-yac \
        php5.6-yaml \
        php5.6-zstd \
        php5.6-smbclient \
        pslib1 \
        libzstd1 \
        libbrotli1 \
        libfribidi0 \
        libmount1 \
        libblkid1 \
        libsmbclient \
        samba-libs \
        libtalloc2 \
        libtevent0 \
        libwbclient0 \
        libtdb1 \
        libcap2 \
        libldb2 \
        libjansson4 \
        blackfire-php \
        libsnmp35
RUN find *.deb | xargs -I % dpkg-deb -x % /rootfs

WORKDIR /rootfs

RUN mkdir -p \
        etc/snmp \
        var/lib/php/sessions \
        var/lib/snmp/mibs \
        var/lib/snmp/mib_indexes \
        var/log \
        var/www \
        run/php \
        etc/php/5.6/fpm \
        etc/php/5.6/cli \
 && chmod 1777 var/lib/php/sessions \
 && mv usr/lib/php/5.6/php.ini-production etc/php/5.6/fpm/php.ini \
 && mv usr/lib/php/5.6/php.ini-production.cli etc/php/5.6/cli/php.ini \
 && mv usr/share/php5.6-*/*/*.ini etc/php/5.6/mods-available \
 && mv usr/lib/blackfire-php/amd64/blackfire-20131226.so usr/lib/php/20131226/blackfire.so \
 && mv usr/lib/blackfire-php/blackfire.ini.dist etc/php/5.6/mods-available/blackfire.ini \
 && ln -s /var/lib/snmp usr/share/snmp \
 && ln -s pinentry-tty usr/bin/pinentry \
 && echo 'mibs :' > etc/snmp/snmp.conf \
 && rm -rf \
        etc/X11 \
        etc/apache2 \
        etc/freetds \
        etc/fonts/conf.d/README \
        etc/gss \
        etc/init \
        etc/init.d \
        etc/logcheck \
        etc/logrotate.d \
        etc/php/5.5 \
        etc/php/7.0 \
        etc/php/7.1 \
        etc/php/7.2 \
        etc/php/7.3 \
        etc/php/7.4 \
        etc/php/8.0 \
        etc/php/8.1 \
        lib/systemd \
        lib/udev \
        usr/bin/gpg2 \
        usr/include \
        usr/lib/aspell/*-linux-gnu*/*.la \
        usr/lib/blackfire-php \
        usr/lib/*-linux-gnu*/ImageMagick-*/modules-*/coders/*.la \
        usr/lib/*-linux-gnu*/ImageMagick-*/modules-*/filters/*.la \
        usr/lib/odbc \
        usr/lib/tmpfiles.d \
        usr/lib/php/5.6 \
        usr/lib/php/php5.6-fpm-reopenlogs \
        usr/lib/php/20121212 \
        usr/lib/php/20131226/*.la \
        usr/lib/php/20151012 \
        usr/lib/php/20160303 \
        usr/lib/php/20160731 \
        usr/lib/php/20170718 \
        usr/lib/php/20180731 \
        usr/lib/php/20190902 \
        usr/lib/php/20200930 \
        usr/lib/php/20210902 \
        usr/lib/systemd \
        usr/lib/*-linux-gnu/glib-2.0/gio-launch-desktop \
        usr/sbin/addgnupghome \
        usr/sbin/applygnupgdefaults \
        usr/share/X11/locale \
        usr/share/doc \
        usr/share/gcc-8 \
        usr/share/man \
        usr/share/info \
        usr/share/apport \
        usr/share/bug \
        usr/share/locale \
        usr/share/doc-base \
        usr/share/libvirt/test-screenshot.png \
        usr/share/lintian \
        usr/share/upstart \
        usr/share/firebird3.0-common \
        usr/share/gdb \
        usr/share/gnupg2/*.txt \
        usr/share/gnupg2/gpg-conf.skel \
        usr/share/php5.6-* \
        usr/share/php/php-gettext \
 && ln -s php5.6 usr/bin/php \
 && ln -s phar5.6 usr/bin/phar \
 && ln -s phar.phar5.6 usr/bin/phar.phar \
 && ln -s php-fpm5.6 usr/sbin/php-fpm \
 && ln -s /dev/stderr var/log/php5.6-fpm.log \
 && sed -i -r \
        -e 's, *listen *= *.*,listen = 9000,g' \
        -e 's, *user *= *.*,user = www,g' \
        -e 's, *group *= *.*,group = www,g' \
        -e 's, *listen\.owner *= *.*,listen.owner = www,g' \
        -e 's, *listen\.group *= *.*,listen.group = www,g' \
        etc/php/5.6/fpm/pool.d/www.conf \
 && sed -i -r \
        's,[ ;]*systemd_interval *= *.*,systemd_interval = 0,g' \
        etc/php/5.6/fpm/php-fpm.conf \
 && sed -i -r \
        -e 's,[ ;]*openssl[.]cafile *= *.*,openssl.cafile = /etc/ssl/certs/ca-certificates.crt,g' \
        -e 's,[ ;]*openssl[.]capath *= *.*,openssl.capath = /usr/share/ca-certificates/mozilla,g' \
        etc/php/5.6/fpm/php.ini \
 && sed -i -r \
        -e 's,[ ;]*openssl[.]cafile *= *.*,openssl.cafile = /etc/ssl/certs/ca-certificates.crt,g' \
        -e 's,[ ;]*openssl[.]capath *= *.*,openssl.capath = /usr/share/ca-certificates/mozilla,g' \
        etc/php/5.6/cli/php.ini \
 && for file in etc/php/5.6/mods-available/*.ini; do \
        module=$(basename ${file}); \
        if [ "${module}" != "gmagick.ini" ]; then \
            priority=$(grep -E " *; *priority=" ${file} | sed -r "s/ *; *priority *= *([0-9]+.*)/\1/g"); \
            if [ -z "${priority}" ]; then priority=20; fi; \
            ln -s "/etc/php/5.6/mods-available/${module}" etc/php/5.6/cli/conf.d/${priority}-${module}; \
            ln -s "/etc/php/5.6/mods-available/${module}" etc/php/5.6/fpm/conf.d/${priority}-${module}; \
        fi \
    done \
 && find \
        etc/firebird/3.0/firebird.conf \
        etc/libnl-3/* \
        etc/magic* \
        etc/xattr.conf \
    | xargs -I % sed -i -r \
        -e 's,^[[:space:]]*[#;]+.*$,,g' \
        -e 's,[[:space:]]+, ,g' \
        -e '/^[[:space:]]*$/d' \
        %

COPY --from=base /etc/group /etc/gshadow /etc/passwd /etc/shadow etc/
COPY init/ etc/init/

WORKDIR /


FROM clover/common

ENV LANG=C.UTF-8
ENV CHOWN="/var/lib/php/sessions /var/www"

COPY --from=build /rootfs /

WORKDIR /var/www

VOLUME ["/var/lib/php/sessions"]

EXPOSE 9000
