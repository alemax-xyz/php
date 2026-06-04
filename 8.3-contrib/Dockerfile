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

COPY --from=clover/php:8.3-git /var/lib/packages/ var/lib/packages/

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

RUN rm -rf \
    usr/bin/myisam_ftdump \
    usr/bin/mysql_config_editor \
    usr/bin/mysqldumpslow \
    usr/share

COPY rootfs/ .

FROM clover/php:8.3-git

COPY --from=build /rootfs /
