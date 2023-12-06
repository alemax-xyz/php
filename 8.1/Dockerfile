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
        gnupg

RUN export DEBIAN_FRONTEND=noninteractive \
 && curl https://packages.sury.org/php/apt.gpg | apt-key add - \
 && ( \
        echo "deb http://deb.debian.org/debian/ bullseye main contrib non-free" \
     && echo "deb http://deb.debian.org/debian/ bullseye-updates main contrib non-free" \
     && echo "deb http://security.debian.org/debian-security bullseye-security main contrib non-free" \
     && echo "deb http://deb.debian.org/debian/ bullseye-backports main contrib non-free" \
 )  > /etc/apt/sources.list.d/bullseye.list \
 && echo "deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-fasttrack main contrib" > /etc/apt/sources.list.d/fasttrack.list \
 && echo "deb https://packages.sury.org/php/ bullseye main" > /etc/apt/sources.list.d/php.list \
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
        libabsl20200923 \
        libatomic1 \
        libavif9 \
        libavahi-client3 \
        libavahi-common3 \
        libavahi-common-data \
        libacl1 \
        libattr1 \
        libbsd0 \
        libcairo2 \
        libcap-ng0 \
        libc-client2007e \
        libcgif0 \
        libcom-err2 \
        libcurl3-gnutls \
        libcurl4 \
        libdatrie1 \
        libdav1d4 \
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
        libffi7 \
        libffi8 \
        libfftw3-double3 \
        libfontconfig1 \
        libfreetype6 \
        libgav1-0 \
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
        libhcrypto4-heimdal \
        libheif1 \
        libheimbase1-heimdal \
        libheimntlm0-heimdal \
        libhogweed6 \
        libhunspell-1.7-0 \
        libhwy1 \
        libhx509-5-heimdal \
        libicu67 \
        libicu72 \
        libidn11 \
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
        libldap-2.4-2 \
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
        librav1e0 \
        librdkafka1 \
        librecode0 \
        libroken18-heimdal \
        librrd8 \
        librtmp1 \
        libsasl2-2 \
        libsasl2-modules-db \
        libsnappy1v5 \
        libsodium23 \
        libsqlite3-0 \
        libssh-4 \
        libssh2-1 \
        libssl1.1 \
        libsvtav1enc1 \
        libsybdb5 \
        libsystemd0 \
        libtasn1-6 \
        libthai0 \
        libthai-data \
        libtidy5deb1 \
        libtirpc3 \
        libtiff5 \
        libtiff6 \
        libudev1 \
        libuuid1 \
        libunistring2 \
        libvirt0 \
        libwebp6 \
        libwebp7 \
        libwebpdemux2 \
        libwebpmux3 \
        libwind0-heimdal \
        libwmf0.2-7 \
        libx11-6 \
        libx11-data \
        libx265-199 \
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
        libyuv0 \
        libzip4 \
        libzmq5 \
        libnorm1 \
        libonig5 \
        mlock \
        php8.1-amqp \
        php8.1-apcu \
        php8.1-ast \
        php8.1-bcmath \
        php8.1-bz2 \
        php8.1-cli \
        php8.1-common \
        php8.1-curl \
        php8.1-dba \
        php8.1-decimal \
        php8.1-ds \
        php8.1-enchant \
        php8.1-excimer \
        php8.1-fpm \
        php8.1-gd \
        php8.1-gearman \
        php8.1-gmagick \
        php8.1-gmp \
        php8.1-gnupg \
        php8.1-grpc \
        php8.1-http \
        php8.1-igbinary \
        php8.1-imagick \
        php8.1-imap \
        php8.1-inotify \
        php8.1-interbase \
        php8.1-intl \
        php8.1-ldap \
        php8.1-libvirt-php \
        php8.1-lz4 \
        php8.1-mailparse \
        php8.1-maxminddb \
        php8.1-mbstring \
        php8.1-mcrypt \
        php8.1-memcache \
        php8.1-memcached \
        php8.1-mongodb \
        php8.1-msgpack \
        php8.1-mysql \
        php8.1-oauth \
        php8.1-odbc \
        php8.1-opcache \
        php8.1-pcov \
        php8.1-pgsql \
        php8.1-phalcon5 \
        php8.1-pinba \
#        php8.1-propro \
        php8.1-protobuf \
        php8.1-ps \
        php8.1-pspell \
        php8.1-psr \
        php8.1-raphf \
        php8.1-rdkafka \
        php8.1-readline \
        php8.1-redis \
        php8.1-rrd \
        php8.1-smbclient \
        php8.1-snmp \
        php8.1-soap \
        php8.1-solr \
        php8.1-sqlite3 \
        php8.1-ssh2 \
        php8.1-stomp \
        php8.1-swoole \
        php8.1-sybase \
        php8.1-tideways \
        php8.1-tidy \
        php8.1-uopz \
        php8.1-uploadprogress \
        php8.1-uuid \
        php8.1-vips \
        php8.1-xdebug \
        php8.1-xhprof \
        php8.1-xml \
        php8.1-xmlrpc \
        php8.1-xsl \
        php8.1-yac \
        php8.1-yaml \
        php8.1-zip \
        php8.1-zmq \
        php8.1-zstd \
        php-libvirt-php \
        php-sass \
        libsass1 \
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
        libilmbase25 \
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
 && mv usr/lib/php/8.1/php.ini-production etc/php/8.1/fpm/php.ini \
 && mv usr/lib/php/8.1/php.ini-production.cli etc/php/8.1/cli/php.ini \
 && mv usr/share/php8.1-*/*/*.ini etc/php/8.1/mods-available \
 && ( \
    echo "; priority=40"; \
    echo "extension=libvirt-php.so" \
 ) > etc/php/8.1/mods-available/libvirt-php.ini \
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
        etc/php/5.5 \
        etc/php/5.6 \
        etc/php/7.0 \
        etc/php/7.1 \
        etc/php/7.2 \
        etc/php/7.3 \
        etc/php/7.4 \
        etc/php/8.0 \
        etc/php/8.2 \
        etc/php/8.3 \
        lib/systemd \
        lib/udev \
        usr/bin/gpg2 \
        usr/include \
        usr/lib/aspell/*-linux-*/*.la \
        usr/lib/*-linux-*/ImageMagick-*/modules-*/coders/*.la \
        usr/lib/*-linux-*/ImageMagick-*/modules-*/filters/*.la \
        usr/lib/odbc \
        usr/lib/tmpfiles.d \
        usr/lib/php/8.1 \
        usr/lib/php/php8.1-fpm-reopenlogs \
        usr/lib/php/20121212 \
        usr/lib/php/20131226 \
        usr/lib/php/20151012 \
        usr/lib/php/20160303 \
        usr/lib/php/20160731 \
        usr/lib/php/20170718 \
        usr/lib/php/20180731 \
        usr/lib/php/20190902 \
        usr/lib/php/20200930 \
        usr/lib/php/20210902/*.la \
        usr/lib/php/20220829 \
        usr/lib/php/20230831 \
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
        usr/share/libvirt/test-screenshot.png \
        usr/share/lintian \
        usr/share/upstart \
        usr/share/firebird3.0-common \
        usr/share/gcc-8 \
        usr/share/gdb \
        usr/share/gnupg2/*.txt \
        usr/share/gnupg2/gpg-conf.skel \
        usr/share/php8.1-* \
 && ln -s php8.1 usr/bin/php \
 && ln -s phar8.1 usr/bin/phar \
 && ln -s phar.phar8.1 usr/bin/phar.phar \
 && ln -s php-fpm8.1 usr/sbin/php-fpm \
 && ln -s /dev/stderr var/log/php8.1-fpm.log \
 && sed -i -r \
        -e 's, *listen *= *.*,listen = 9000,g' \
        -e 's, *user *= *.*,user = www,g' \
        -e 's, *group *= *.*,group = www,g' \
        -e 's, *listen\.owner *= *.*,listen.owner = www,g' \
        -e 's, *listen\.group *= *.*,listen.group = www,g' \
        etc/php/8.1/fpm/pool.d/www.conf \
 && sed -i -r \
        's,[ ;]*systemd_interval *= *.*,systemd_interval = 0,g' \
        etc/php/8.1/fpm/php-fpm.conf \
 && sed -i -r \
        -e 's,[ ;]*openssl[.]cafile *= *.*,openssl.cafile = /etc/ssl/certs/ca-certificates.crt,g' \
        -e 's,[ ;]*openssl[.]capath *= *.*,openssl.capath = /usr/share/ca-certificates/mozilla,g' \
        etc/php/8.1/fpm/php.ini \
 && sed -i -r \
        -e 's,[ ;]*openssl[.]cafile *= *.*,openssl.cafile = /etc/ssl/certs/ca-certificates.crt,g' \
        -e 's,[ ;]*openssl[.]capath *= *.*,openssl.capath = /usr/share/ca-certificates/mozilla,g' \
        etc/php/8.1/cli/php.ini \
 && echo "uopz.disable = 1" >> etc/php/8.1/mods-available/uopz.ini \
 && for file in etc/php/8.1/mods-available/*.ini; do \
        module=$(basename ${file}); \
        if [ "${module}" != "gmagick.ini" ]; then \
            priority=$(grep -E " *; *priority=" ${file} | sed -r "s/ *; *priority *= *([0-9]+.*)/\1/g"); \
            if [ -z "${priority}" ]; then priority=20; fi; \
            ln -s "/etc/php/8.1/mods-available/${module}" etc/php/8.1/cli/conf.d/${priority}-${module}; \
            ln -s "/etc/php/8.1/mods-available/${module}" etc/php/8.1/fpm/conf.d/${priority}-${module}; \
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
