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

FROM library/debian:stable-slim AS build

ENV LANG=C.UTF-8

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y \
        wget \
        python3-software-properties \
        software-properties-common \
        apt-utils

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get install -y \
        fasttrack-archive-keyring \
        curl \
        gnupg \
 && apt-get update

RUN export DEBIAN_FRONTEND=noninteractive \
 && wget https://packages.sury.org/php/apt.gpg -O /etc/apt/trusted.gpg.d/sury-php.gpg \
 && echo "deb https://fasttrack.debian.net/debian-fasttrack/ bookworm-fasttrack main contrib" > /etc/apt/sources.list.d/fasttrack.list \
 && echo "deb https://packages.sury.org/php/ bullseye main" > /etc/apt/sources.list.d/php-bullseye.list \
 && echo "deb https://packages.sury.org/php/ bookworm main" > /etc/apt/sources.list.d/php-bookworm.list \
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
        libabsl20220623 \
        libaom3 \
        libapparmor1 \
        libargon2-1 \
        libasn1-8-heimdal \
        libaspell15 \
        libassuan0 \
        libatomic1 \
        libavif15 \
        libavahi-client3 \
        libavahi-common3 \
        libavahi-common-data \
        libacl1 \
        libattr1 \
        libbsd0 \
        libcairo2 \
        libc-ares2 \
        libcap-ng0 \
        libc-client2007e \
        libcgif0 \
        libcom-err2 \
        libcurl3-gnutls \
        libcurl4 \
        libdatrie1 \
        libdav1d6 \
        libdbi1 \
        libdbus-1-3 \
        libde265-0 \
        libdeflate0 \
        libdevmapper1.02.1 \
        libedit2 \
        libenchant-2.2 \
        libevent-2.1-7 \
        libexpat1 \
        libfbclient2 \
        libffi8 \
        libfftw3-double3 \
        libfontconfig1 \
        libfreetype6 \
        libgav1-1 \
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
        libhashkit2 \
        libharfbuzz0b \
        libhcrypto5-heimdal \
        libheif1 \
        libheimbase1-heimdal \
        libheimntlm0-heimdal \
        libhogweed6 \
        libhunspell-1.7-0 \
        libhwy1 \
        libhx509-5-heimdal \
        libicu72 \
        libidn12 \
        libidn2-0 \
        libjbig0 \
        libjxl0.7 \
        libgif7 \
        libjpeg62-turbo \
        libk5crypto3 \
        libkeyutils1 \
        libkrb5-26-heimdal \
        libkrb5-3 \
        libkrb5support0 \
        libksba8 \
        liblcms2-2 \
        libldap-2.5-0 \
        liblerc4 \
        liblqr-1-0 \
        libltdl7 \
        libmcrypt4 \
        libmd0 \
        liblmdb0 \
        liblzma5 \
        liblz4-1 \
        libmagic1 \
        libmagic-mgc \
        libmagickcore-6.q16-6 \
        libmagickcore-6.q16-6-extra \
        libmagickwand-6.q16-6 \
        libmemcached11 \
        libnettle8 \
        libnl-3-200 \
        libnghttp2-14 \
        libtommath1 \
        libnpth0 \
        libnuma1 \
        libodbc2 \
        libpcre2-8-0 \
        libp11-kit0 \
        libpango-1.0-0 \
        libpangocairo-1.0-0 \
        libpangoft2-1.0-0 \
        libpgm-5.3-0 \
        libpixman-1-0 \
        libpng16-16 \
        libpq5 \
        libpsl5 \
        libqdbm14 \
        librabbitmq4 \
        libraqm0 \
        librav1e0 \
        librdkafka1 \
        librecode0 \
        libroken19-heimdal \
        librrd8 \
        librtmp1 \
        libsasl2-2 \
        libsasl2-modules-db \
        libsnappy1v5 \
        libsodium23 \
        libsqlite3-0 \
        libssh-4 \
        libssh2-1 \
        libssl3 \
        libsvtav1enc1 \
        libsybdb5 \
        libsystemd0 \
        libtasn1-6 \
        libthai0 \
        libthai-data \
        libtidy5deb1 \
        libtirpc3 \
        libtiff6 \
        libudev1 \
        libuuid1 \
        libunistring2 \
#        libvirt0 \
        libwebp7 \
        libwebpdemux2 \
        libwebpmux3 \
        libwind0-heimdal \
        libwmf-0.2-7 \
        libwmflite-0.2-7 \
        libx11-6 \
        libx11-data \
        libx265-199 \
        libxau6 \
        libxcb1 \
        libxcb-render0 \
        libxcb-shm0 \
        libxdmcp6 \
        libxenstore4 \
        libxext6 \
        libxml2 \
        libxmlrpc-epi0 \
        libxpm4 \
        libxrender1 \
        libxslt1.1 \
        libyajl2 \
        libyaml-0-2 \
        libyuv0 \
        libzip4 \
        libzmq5 \
        libnorm1 \
        libonig5 \
        mlock \
        php8.4-amqp \
        php8.4-apcu \
        php8.4-ast \
        php8.4-bcmath \
        php8.4-bz2 \
        php8.4-cli \
        php8.4-common \
        php8.4-curl \
        php8.4-dba \
        php8.4-decimal \
        php8.4-dio \
        php8.4-ds \
        php8.4-enchant \
        php8.4-excimer \
        php8.4-fpm \
        php8.4-gd \
        php8.4-gearman \
        php8.4-gmagick \
        php8.4-gmp \
        php8.4-gnupg \
        php8.4-grpc \
        php8.4-http \
        php8.4-igbinary \
        php8.4-imagick \
        php8.4-imap \
        php8.4-inotify \
        php8.4-interbase \
        php8.4-intl \
        php8.4-ldap \
#        php8.4-libvirt-php \
        php8.4-lz4 \
        php8.4-mailparse \
        php8.4-maxminddb \
        php8.4-mbstring \
        php8.4-mcrypt \
        php8.4-memcache \
        php8.4-memcached \
        php8.4-mongodb \
        php8.4-msgpack \
        php8.4-mysql \
        php8.4-oauth \
        php8.4-odbc \
        php8.4-opcache \
        php8.4-opentelemetry \
        php8.4-pcov \
        php8.4-pgsql \
        php8.4-phalcon \
#        php8.4-pinba \
        php8.4-pq \
        php8.4-protobuf \
        php8.4-ps \
        php8.4-pspell \
        php8.4-psr \
        php8.4-raphf \
        php8.4-rdkafka \
        php8.4-readline \
        php8.4-redis \
        php8.4-rrd \
        php8.4-smbclient \
        php8.4-snmp \
        php8.4-soap \
        php8.4-solr \
        php8.4-sqlite3 \
        php8.4-ssh2 \
        php8.4-stomp \
        php8.4-swoole \
        php8.4-sybase \
        php8.4-tidy \
        php8.4-uopz \
        php8.4-uploadprogress \
        php8.4-uuid \
        php8.4-vips \
        php8.4-xdebug \
        php8.4-xhprof \
        php8.4-xml \
        php8.4-xmlrpc \
        php8.4-xsl \
        php8.4-yac \
        php8.4-yaml \
        php8.4-zip \
        php8.4-zmq \
        php8.4-zstd \
#        php-libvirt-php \
        libprotobuf-c1 \
        libmaxminddb0 \
        libmpdec3 \
        pslib1 \
        libzstd1 \
        libbrotli1 \
        libfribidi0 \
        libmount1 \
        libblkid1 \
        libvips42 \
        libimagequant0 \
        libimath-3-1-29 \
        libgsf-1-114 \
        liborc-0.4-0 \
        librsvg2-2 \
        libpoppler-glib8 \
        libpoppler126 \
        libopenexr-3-1-30 \
        libopenslide0 \
        libcfitsio10 \
        libmatio11 \
        libexif12 \
        libcairo-gobject2 \
        libgdk-pixbuf-2.0-0 \
        libopenjp2-7 \
        libhdf5-103-1 \
        libnss3 \
        libnspr4 \
        libsz2 \
        libaec0 \
        libsmbclient \
        samba-libs \
        libtalloc2 \
        libtevent0 \
        libwbclient0 \
        libtdb1 \
        libcap2 \
        libldb2 \
        libjansson4 \
        libsnmp40
RUN find *.deb | xargs -I % dpkg-deb -x % /rootfs

WORKDIR /rootfs

RUN ARCH=$(dpkg --print-architecture | sed -e 's,i386,i386-linux-gnu,g' -e 's,amd64,x86_64-linux-gnu,g' -e 's,arm64,aarch64-linux-gnu,g' -e 's,armhf,arm-linux-gnueabihf,g') \
 && mkdir -p \
        etc/snmp \
        var/lib/php/sessions \
        var/lib/snmp/mibs \
        var/lib/snmp/mib_indexes \
        var/lib/snmp/cert_indexes \
        var/log \
        var/www \
        run/php \
        usr/lib/ssl \
 && chmod 1777 var/lib/php/sessions \
 && mv usr/lib/php/8.4/php.ini-production etc/php/8.4/fpm/php.ini \
 && mv usr/lib/php/8.4/php.ini-production.cli etc/php/8.4/cli/php.ini \
 && mv usr/share/php8.4-*/*/*.ini etc/php/8.4/mods-available \
 && ln -s /etc/ssl/openssl.cnf usr/lib/ssl/openssl.cnf \
 && ln -s /var/lib/snmp usr/share/snmp \
 && ln -s pinentry-tty usr/bin/pinentry \
 && ln -s blas/libblas.so.3 usr/lib/$ARCH/libblas.so.3 \
 && ln -s lapack/liblapack.so.3 usr/lib/$ARCH/liblapack.so.3 \
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
        etc/php/5.4 \
        etc/php/5.5 \
        etc/php/5.6 \
        etc/php/7.0 \
        etc/php/7.1 \
        etc/php/7.2 \
        etc/php/7.3 \
        etc/php/7.4 \
        etc/php/8.0 \
        etc/php/8.1 \
        etc/php/8.2 \
        etc/php/8.3 \
#        etc/php/8.4 \
        lib/systemd \
        lib/udev \
        usr/bin/gpg2 \
        usr/include \
        usr/lib/odbc \
        usr/lib/tmpfiles.d \
        usr/lib/php/8.4 \
        usr/lib/php/php8.4-fpm-reopenlogs \
        usr/lib/php/20121212 \
        usr/lib/php/20131226 \
        usr/lib/php/20151012 \
        usr/lib/php/20160303 \
        usr/lib/php/20160731 \
        usr/lib/php/20170718 \
        usr/lib/php/20180731 \
        usr/lib/php/20190902 \
        usr/lib/php/20200930 \
        usr/lib/php/20210902 \
        usr/lib/php/20220829 \
        usr/lib/php/20230831 \
#        usr/lib/php/20240924 \
        usr/lib/systemd \
        usr/lib/*-linux-*/glib-2.0/gio-launch-desktop \
        usr/sbin/addgnupghome \
        usr/sbin/applygnupgdefaults \
        usr/share/X11/locale \
        usr/share/doc \
        usr/share/man \
        usr/share/info \
        usr/share/apport \
        usr/share/bug \
        usr/share/locale \
        usr/share/doc-base \
        usr/share/libcrypt* \
        usr/share/lintian \
        usr/share/upstart \
        usr/share/firebird3.0-common \
        usr/share/gcc-8 \
        usr/share/gdb \
        usr/share/gnupg2/*.txt \
        usr/share/gnupg2/gpg-conf.skel \
        usr/share/php8.4-* \
 && ln -s php8.4 usr/bin/php \
 && ln -s phar8.4 usr/bin/phar \
 && ln -s phar.phar8.4 usr/bin/phar.phar \
 && ln -s php-fpm8.4 usr/sbin/php-fpm \
 && ln -s /dev/stderr var/log/php8.4-fpm.log \
 && sed -i -r \
        -e 's, *listen *= *.*,listen = 9000,g' \
        -e 's, *user *= *.*,user = www,g' \
        -e 's, *group *= *.*,group = www,g' \
        -e 's, *listen\.owner *= *.*,listen.owner = www,g' \
        -e 's, *listen\.group *= *.*,listen.group = www,g' \
        etc/php/8.4/fpm/pool.d/www.conf \
 && sed -i -r \
        's,[ ;]*systemd_interval *= *.*,systemd_interval = 0,g' \
        etc/php/8.4/fpm/php-fpm.conf \
 && sed -i -r \
        -e 's,[ ;]*openssl[.]cafile *= *.*,openssl.cafile = /etc/ssl/certs/ca-certificates.crt,g' \
        -e 's,[ ;]*openssl[.]capath *= *.*,openssl.capath = /usr/share/ca-certificates/mozilla,g' \
        etc/php/8.4/fpm/php.ini \
 && sed -i -r \
        -e 's,[ ;]*openssl[.]cafile *= *.*,openssl.cafile = /etc/ssl/certs/ca-certificates.crt,g' \
        -e 's,[ ;]*openssl[.]capath *= *.*,openssl.capath = /usr/share/ca-certificates/mozilla,g' \
        etc/php/8.4/cli/php.ini \
 && echo "uopz.disable = 1" >> etc/php/8.4/mods-available/uopz.ini \
 && for file in etc/php/8.4/mods-available/*.ini; do \
        module=$(basename ${file}); \
        if [ "${module}" != "gmagick.ini" ]; then \
            priority=$(grep -E " *; *priority=" ${file} | sed -r "s/ *; *priority *= *([0-9]+.*)/\1/g"); \
            if [ -z "${priority}" ]; then priority=20; fi; \
            ln -s "/etc/php/8.4/mods-available/${module}" etc/php/8.4/cli/conf.d/${priority}-${module}; \
            ln -s "/etc/php/8.4/mods-available/${module}" etc/php/8.4/fpm/conf.d/${priority}-${module}; \
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
COPY openssl.cnf etc/ssl/

WORKDIR /


FROM clover/common

ENV LANG=C.UTF-8
ENV CHOWN="/var/lib/php/sessions /var/www"

COPY --from=build /rootfs /

WORKDIR /var/www

VOLUME ["/var/lib/php/sessions"]

EXPOSE 9000
