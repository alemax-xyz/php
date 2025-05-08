FROM library/debian:stable-slim AS build

ENV LANG=C.UTF-8

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y \
        software-properties-common \
        apt-utils

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get install -y \
        fasttrack-archive-keyring \
        curl \
        gnupg

RUN export DEBIAN_FRONTEND=noninteractive \
 && ( \
        echo "deb http://deb.debian.org/debian/ bookworm main contrib non-free" \
     && echo "deb http://deb.debian.org/debian/ bookworm-updates main contrib non-free" \
     && echo "deb http://security.debian.org/debian-security bookworm-security main contrib non-free" \
     && echo "deb http://deb.debian.org/debian/ bookworm-backports main contrib non-free" \
 )  > /etc/apt/sources.list.d/bookworm.list \
 && echo "deb https://fasttrack.debian.net/debian-fasttrack/ bookworm-fasttrack main contrib" > /etc/apt/sources.list.d/fasttrack.list \
 && apt-get update

RUN mkdir -p /build /rootfs
WORKDIR /build
RUN apt-get download \
    libncurses6 \
    mariadb-client-core
RUN find *.deb | xargs -I % dpkg-deb -x % /rootfs

WORKDIR /rootfs

RUN rm -rf \
    usr/bin/myisam_ftdump \
    usr/bin/mysql_config_editor \
    usr/bin/mysqldumpslow \
    usr/share

COPY root/ /rootfs/

FROM clover/php:8.3-composer

COPY --from=build /rootfs /
