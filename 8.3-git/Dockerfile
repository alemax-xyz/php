FROM library/debian:stable-slim AS build

ENV LANG=C.UTF-8

RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y \
        software-properties-common \
        apt-utils

RUN mkdir -p /build /rootfs
WORKDIR /build
RUN apt-get download \
    openssh-client \
    git
RUN find *.deb | xargs -I % dpkg-deb -x % /rootfs

WORKDIR /rootfs

RUN rm -rf \
    etc/bash_completion.d \
    usr/share/apport \
    usr/share/bash-completion \
    usr/share/doc \
    usr/share/git-core/contrib \
    usr/share/git-core/templates/hooks/*.sample \
    usr/share/gitweb \
    usr/share/lintian \
    usr/share/man \
    usr/share/perl5 \
    usr/lib/git-core/git \
    usr/lib/git-core/git-add--interactive \
    usr/lib/git-core/git-shell \
    usr/lib/git-core/git-upload-pack \
    usr/lib/git-core/mergetools \
    usr/lib/systemd \
 && ln -s /usr/bin/git usr/lib/git-core/git \
 && ln -s /usr/bin/git-upload-pack usr/lib/git-core/git-upload-pack \
 && ln -s /usr/bin/git-shell usr/lib/git-core/git-shell


FROM clover/php:8.3

COPY --from=build /rootfs /
