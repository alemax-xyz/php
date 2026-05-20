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

ENV LANG=C.UTF-8 \
    SANDBOX_ROOT=/

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y wget openssl ca-certificates

ADD https://github.com/alemax-xyz/misc-tools.git#main /usr/local/bin/

RUN mkdir -p /build /rootfs

WORKDIR /build

COPY build/ .

COPY --from=clover/common:latest /var/lib/packages/ var/lib/packages/

RUN apt-sandbox --install --verstamp \
        --apt-config \
            APT::Install-Recommends=false \
            APT::Get::Upgrade==false \
        --repository . \
        --keyring . \
        --installed var/lib/packages \
        --obsolete packages.obsolete \
        --required packages.required \
        --optional packages.optional

WORKDIR /rootfs

RUN mkdir -p \
        var/log \
        var/www \
        run/php \
        usr/lib/ssl \
        usr/share/snmp/cert_indexes \
 && chmod 1777 var/lib/php/sessions \
 && mv usr/lib/php/7.2/php.ini-production etc/php/7.2/fpm/php.ini \
 && mv usr/lib/php/7.2/php.ini-production.cli etc/php/7.2/cli/php.ini \
 && mv usr/share/php7.2-*/*/*.ini etc/php/7.2/mods-available \
 && ln -s /etc/ssl/openssl.cnf usr/lib/ssl/openssl.cnf \
 && ln -s pinentry-curses usr/bin/pinentry \
 && rm -rf \
        etc/X11 \
        etc/apache2 \
        etc/cron.d \
        etc/freetds \
        etc/fonts/conf.d/README \
        etc/gss \
        etc/init.d \
        etc/logcheck \
        etc/logrotate.d \
        etc/sensors.d/.placeholder \
        etc/sysctl.d \
        usr/lib/systemd \
        usr/include \
        usr/lib/debug \
        usr/lib/tmpfiles.d \
        usr/lib/php/7.2 \
        usr/lib/php/packaging \
        usr/lib/php/php* \
        usr/lib/php/sessionclean \
        usr/lib/systemd \
        usr/lib/*-linux-*/glib-2.0/gio-launch-desktop \
        usr/sbin/phpdismod \
        usr/sbin/phpenmod \
        usr/sbin/phpquery \
        usr/sbin/phpdismod \
        usr/share/X11/locale \
        usr/share/bug \
        usr/share/doc \
        usr/share/doc-base \
        usr/share/firebird* \
        usr/share/gnupg/*.txt \
        usr/share/info \
        usr/share/libcrypt* \
        usr/share/libgcrypt* \
        usr/share/libvirt/test** \
        usr/share/lintian \
        usr/share/locale \
        usr/share/man \
        usr/share/php7.2-* \
        usr/share/pkgconfig \
        var/lib/snmp \
 && ( [ -f usr/lib/php/20170718/libvirt-php.so ] && ( \
            echo "; priority=40" \
            echo "extension=libvirt-php.so" \
            echo "[libvirt]" \
            echo "libvirt.iso_path=/var/lib/libvirt/images" \
            echo "libvirt.image_path=/var/lib/libvirt/images" \
            echo "libvirt.max_connections=5" \
    ) > etc/php/7.2/mods-available/libvirt-php.ini || true ) \
 && ln -s php7.2 usr/bin/php \
 && ln -s phar7.2 usr/bin/phar \
 && ln -s phar.phar7.2 usr/bin/phar.phar \
 && ln -s php-fpm7.2 usr/sbin/php-fpm \
 && ln -s /dev/stderr var/log/php7.2-fpm.log \
 && ln -s /usr/share/snmp var/lib/snmp \
 && sed -i -E \
        -e 's, *listen *= *.*,listen = ${PHP_FPM_POOL_LISTEN:-9000},g' \
        -e 's, *user *= *.*,user = ${PUSER},g' \
        -e 's, *group *= *.*,group = ${PGROUP},g' \
        -e 's, *listen\.owner *= *.*,listen.owner = ${PUSER},g' \
        -e 's, *listen\.group *= *.*,listen.group = ${PGROUP},g' \
        etc/php/7.2/fpm/pool.d/www.conf \
 && sed -i -E \
        's,[ ;]*systemd_interval *= *.*,systemd_interval = 0,g' \
        etc/php/7.2/fpm/php-fpm.conf \
 && sed -i -E \
        -e 's,[ ;]*openssl[.]cafile *= *.*,openssl.cafile = /etc/ssl/certs/ca-certificates.crt,g' \
        -e 's,[ ;]*openssl[.]capath *= *.*,openssl.capath = /usr/share/ca-certificates/mozilla,g' \
        etc/php/7.2/fpm/php.ini \
        etc/php/7.2/cli/php.ini \
 && ( [ -f etc/php/7.2/mods-available/uopz.ini ] && echo "uopz.disable = 1" >> etc/php/7.2/mods-available/uopz.ini || true ) \
 && for file in etc/php/7.2/mods-available/*.ini; do \
        module=$(basename ${file}); \
        if [ "${module}" != "gmagick.ini" ]; then \
            priority=$(grep -E " *; *priority=" ${file} | sed -r "s/ *; *priority *= *([0-9]+.*)/\1/g"); \
            if [ -z "${priority}" ]; then priority=20; fi; \
            ln -s "/etc/php/7.2/mods-available/${module}" etc/php/7.2/cli/conf.d/${priority}-${module}; \
            ln -s "/etc/php/7.2/mods-available/${module}" etc/php/7.2/fpm/conf.d/${priority}-${module}; \
        fi \
    done \
 && ( [ -f etc/php/7.2/mods-available/gmacigk.ini -a -f etc/php/7.2/mods-available/imagick.ini ] && rm -f etc/php/*/*/conf.d/*-gmagick.ini || true ) \
 && ( [ -f etc/php/7.2/mods-available/openswoole.ini -a -f etc/php/7.2/mods-available/swoole.ini ] && rm -f etc/php/*/*/conf.d/*-openswoole.ini || true ) \
 && sed -i -r \
        -e 's,^[[:space:]]*[#;]+.*$,,g' \
        -e 's,[[:space:]]+, ,g' \
        -e '/^[[:space:]]*$/d' \
        etc/netconfig \
        etc/firebird/*/firebird.conf \
        $([ -e etc/libnl-3 ] && echo etc/libnl-3/*) \
        $([ -e etc/libvirt ] && echo etc/libvirt/*.conf) \
        etc/snmp/snmp.conf \
        usr/lib/*/ImageMagick*/modules*/*/*.la \
        usr/lib/aspell/*/*.la \
 && sed -i -E \
        -e 's,^[[:space:]]*[#].*$,,g' \
        -e '/^[[:space:]]*$/d' \
         etc/sensors3.conf \
         usr/share/freetds/freetds.conf \
 && sed -i -E -z \
        -e 's,<!--([^-]*|-[^-]|--[^>])*-->,,g' \
        -e 's/[[:space:]]+\n/\n/g' \
        -e 's/\n\n+/\n/g' \
        etc/ImageMagick-7/*.xml \
        etc/fonts/fonts.conf \
        etc/fonts/conf.avail/*.conf \
        usr/share/fontconfig/conf.avail/*.conf \
        usr/lib/*/ImageMagick*/config-*/*.xml \
        usr/lib/GraphicsMagick*/config/*.mgk \
        usr/share/GraphicsMagick*/config/*.mgk \
        usr/share/ImageMagick*/*.xml \
        $( [ -e usr/share/libvirt ] && echo \
            usr/share/libvirt/*/*.xml \
            usr/share/libvirt/*/*.rng \
        ) \
        usr/share/mime/packages/*.xml \
        usr/share/xml/fontconfig/fonts.dtd

COPY --from=base /etc/group /etc/gshadow /etc/passwd /etc/shadow etc/
COPY rootfs/ .

WORKDIR /


FROM clover/common

ENV LANG=C.UTF-8

COPY --from=build /rootfs /

WORKDIR /var/www

EXPOSE ${PHP_FPM_POOL_LISTEN:-9000}
