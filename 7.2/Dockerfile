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
        libargon2-1 \
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
        libenchant-2.2 \
        libevent-2.1-7 \
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
        libwebpdemux2 \
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
        php7.2-amqp \
        php7.2-apcu \
        php7.2-ast \
        php7.2-bcmath \
        php7.2-bz2 \
        php7.2-cli \
        php7.2-common \
        php7.2-curl \
        php7.2-dba \
        php7.2-decimal \
        php7.2-enchant \
        php7.2-facedetect \
        php7.2-fpm \
        php7.2-gd \
        php7.2-gmp \
        php7.2-grpc \
        php7.2-http \
        php7.2-igbinary \
        php7.2-imagick \
        php7.2-imap \
        php7.2-inotify \
        php7.2-interbase \
        php7.2-intl \
        php7.2-json \
        php7.2-lz4 \
        php7.2-ldap \
        php7.2-mailparse \
        php7.2-maxminddb \
        php7.2-mbstring \
        php7.2-mcrypt \
        php7.2-memcached \
        php7.2-mongodb \
        php7.2-msgpack \
        php7.2-mysql \
        php7.2-oauth \
        php7.2-odbc \
        php7.2-opcache \
        php7.2-pgsql \
        php7.2-propro \
        php7.2-protobuf \
        php7.2-ps \
        php7.2-pspell \
        php7.2-psr \
        php7.2-raphf \
        php7.2-readline \
        php7.2-recode \
        php7.2-redis \
        php7.2-rrd \
        php7.2-smbclient \
        php7.2-snmp \
        php7.2-soap \
        php7.2-sqlite3 \
        php7.2-ssh2 \
        php7.2-sybase \
        php7.2-tidy \
        php7.2-uopz \
        php7.2-uuid \
        php7.2-vips \
        php7.2-xdebug \
        php7.2-xhprof \
        php7.2-xml \
        php7.2-xmlrpc \
        php7.2-xsl \
        php7.2-yac \
        php7.2-yaml \
        php7.2-zip \
        php7.2-zmq \
        php7.2-apcu-bc \
        php7.2-ds \
        php7.2-gearman \
        php7.2-geoip \
        php7.2-gmagick \
        php7.2-gnupg \
        php7.2-igbinary \
        php7.2-imagick \
        php7.2-lua \
        liblua5.2-0 \
        php-libvirt-php \
        php7.2-memcache \
        php7.2-memcached \
        php7.2-mongodb \
        php7.2-msgpack \
        php7.2-oauth \
        php7.2-phalcon3 \
        php7.2-phalcon4 \
        php7.2-radius \
        php7.2-raphf \
        php7.2-redis \
        php7.2-rrd \
        php7.2-solr \
        php7.2-ssh2 \
        php7.2-stomp \
        php7.2-tideways \
        php7.2-uploadprogress \
        php7.2-xdebug \
        php7.2-yac \
        php7.2-yaml \
        php7.2-pcov \
        php7.2-pinba \
        php7.2-psr \
        libprotobuf-c1 \
        libmaxminddb0 \
        libmpdec2 \
        pslib1 \
        libzstd1 \
        libbrotli1 \
        libfribidi0 \
        libmount1 \
        libblkid1 \
        libvips42 \
        libcfitsio8 \
        libexif12 \
        libgsf-1-114 \
        libimagequant0 \
        libmatio9 \
        libopenexr24 \
        libopenslide0 \
        liborc-0.4-0 \
        libpoppler-glib8 \
        libpoppler97 \
        libopenjp2-7 \
        librsvg2-2 \
        libcairo-gobject2 \
        libgdk-pixbuf2.0-0 \
        libopencv-core4.2 \
        libopencv-imgcodecs4.2 \
        libopencv-imgproc4.2 \
        libopencv-objdetect4.2 \
        libopencv-flann4.2 \
        libopencv-highgui4.2 \
        libopencv-video4.2 \
        libopencv-ml4.2 \
        libopencv-calib3d4.2 \
        libopencv-features2d4.2 \
        libtbb2 \
        libgdal26 \
        libgdcm3.0 \
        libilmbase24 \
        libcharls2 \
        libjson-c4 \
        libhdf5-103 \
        libarmadillo9 \
        libnss3 \
        libnspr4 \
        libfreexl1 \
        libsz2 \
        libqhull7 \
        libaec0 \
        libgeos-c1v5 \
        libgeos-3.8.0 \
        libepsilon1 \
        odbcinst1debian2 \
        libkmlbase1 \
        libkmldom1 \
        libkmlengine1 \
        libxerces-c3.2 \
        libnetcdf15 \
        libhdf4-0-alt \
        libogdi4.1 \
        libgeotiff5 \
        libproj15 \
        libdapclient6v5 \
        libdap25 \
        libspatialite7 \
        libfyba0 \
        libmysqlclient21 \
        libblas3 \
        liblapack3 \
        libarpack2 \
        libsuperlu5 \
        libminizip1 \
        liburiparser1 \
        libgfortran5 \
        libquadmath0 \
        php7.2-smbclient \
        libsmbclient \
        samba-libs \
        libtalloc2 \
        libtevent0 \
        libwbclient0 \
        libtdb1 \
        libcap2 \
        libldb2 \
        libjansson4 \
        libsnmp35 \
        blackfire-php
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
 && chmod 1777 var/lib/php/sessions \
 && mv usr/lib/php/7.2/php.ini-production etc/php/7.2/fpm/php.ini \
 && mv usr/lib/php/7.2/php.ini-production.cli etc/php/7.2/cli/php.ini \
 && mv usr/share/php7.2-*/*/*.ini etc/php/7.2/mods-available \
 && mv usr/lib/blackfire-php/amd64/blackfire-20170718.so usr/lib/php/20170718/blackfire.so \
 && mv usr/lib/blackfire-php/blackfire.ini.dist etc/php/7.2/mods-available/blackfire.ini \
 && ln -s /var/lib/snmp usr/share/snmp \
 && ln -s pinentry-tty usr/bin/pinentry \
 && ln -s blas/libblas.so.3 usr/lib/x86_64-linux-gnu/libblas.so.3 \
 && ln -s lapack/liblapack.so.3 usr/lib/x86_64-linux-gnu/liblapack.so.3 \
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
        usr/lib/php/7.2 \
        usr/lib/php/php7.2-fpm-reopenlogs \
        usr/lib/php/20121212 \
        usr/lib/php/20131226 \
        usr/lib/php/20151012 \
        usr/lib/php/20160303 \
        usr/lib/php/20160731 \
        usr/lib/php/20170718/*.la \
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
        usr/share/gcc-8 \
        usr/share/gdb \
        usr/share/gnupg2/*.txt \
        usr/share/gnupg2/gpg-conf.skel \
        usr/share/php7.2-* \
 && ln -s php7.2 usr/bin/php \
 && ln -s phar7.2 usr/bin/phar \
 && ln -s phar.phar7.2 usr/bin/phar.phar \
 && ln -s php-fpm7.2 usr/sbin/php-fpm \
 && ln -s /dev/stderr var/log/php7.2-fpm.log \
 && sed -i -r \
        -e 's, *listen *= *.*,listen = 9000,g' \
        -e 's, *user *= *.*,user = www,g' \
        -e 's, *group *= *.*,group = www,g' \
        -e 's, *listen\.owner *= *.*,listen.owner = www,g' \
        -e 's, *listen\.group *= *.*,listen.group = www,g' \
        etc/php/7.2/fpm/pool.d/www.conf \
 && sed -i -r \
        's,[ ;]*systemd_interval *= *.*,systemd_interval = 0,g' \
        etc/php/7.2/fpm/php-fpm.conf \
 && sed -i -r \
        -e 's,[ ;]*openssl[.]cafile *= *.*,openssl.cafile = /etc/ssl/certs/ca-certificates.crt,g' \
        -e 's,[ ;]*openssl[.]capath *= *.*,openssl.capath = /usr/share/ca-certificates/mozilla,g' \
        etc/php/7.2/fpm/php.ini \
 && sed -i -r \
        -e 's,[ ;]*openssl[.]cafile *= *.*,openssl.cafile = /etc/ssl/certs/ca-certificates.crt,g' \
        -e 's,[ ;]*openssl[.]capath *= *.*,openssl.capath = /usr/share/ca-certificates/mozilla,g' \
        etc/php/7.2/cli/php.ini \
 && echo "uopz.disable = 1" >> etc/php/7.2/mods-available/uopz.ini \
 && for file in etc/php/7.2/mods-available/*.ini; do \
        module=$(basename ${file}); \
        if [ "${module}" != "gmagick.ini" ]; then \
            priority=$(grep -E " *; *priority=" ${file} | sed -r "s/ *; *priority *= *([0-9]+.*)/\1/g"); \
            if [ -z "${priority}" ]; then priority=20; fi; \
            ln -s "/etc/php/7.2/mods-available/${module}" etc/php/7.2/cli/conf.d/${priority}-${module}; \
            ln -s "/etc/php/7.2/mods-available/${module}" etc/php/7.2/fpm/conf.d/${priority}-${module}; \
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
