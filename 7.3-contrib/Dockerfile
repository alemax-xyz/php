FROM library/ubuntu:focal AS build

ENV LANG=C.UTF-8

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y \
        software-properties-common \
        apt-utils

RUN mkdir -p /build /rootfs
WORKDIR /build
RUN apt-get download \
    mysql-client-core-8.0
RUN find *.deb | xargs -I % dpkg-deb -x % /rootfs

WORKDIR /rootfs

RUN rm -rf \
    usr/bin/myisam_ftdump \
    usr/bin/mysql_config_editor \
    usr/bin/mysqldumpslow \
    usr/share

COPY root/ /rootfs/

FROM clover/php:7.3-composer

COPY --from=build /rootfs /
