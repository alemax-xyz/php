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

COPY --from=clover/php:7.2 /var/lib/packages/ var/lib/packages/

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
    etc/bash_completion.d \
    usr/share/apport \
    usr/share/bash-completion \
    usr/share/doc \
    usr/share/git-core/contrib \
    usr/share/git-core/templates/hooks/*.sample \
    usr/share/gitweb \
    usr/share/lintian \
    usr/share/locale \
    usr/share/man \
    usr/share/perl5 \
    usr/lib/git-core/git \
    usr/lib/git-core/git-instaweb \
    usr/lib/git-core/git-web--browse \
    usr/lib/git-core/git-shell \
    usr/lib/git-core/git-upload-pack \
    usr/lib/git-core/mergetools \
    usr/lib/git-core/mergetool* \
    usr/lib/git-core/scalar \
    usr/lib/systemd \
    usr/lib/tmpfiles.d \
 && ln -s /usr/bin/git usr/lib/git-core/git \
 && ln -s /usr/bin/git-upload-pack usr/lib/git-core/git-upload-pack \
 && ln -s /usr/bin/git-shell usr/lib/git-core/git-shell \
 && ln -s /usr/bin/scalar usr/lib/git-core/scalar \
 && sed -i -r \
        -e 's,^[[:space:]]*[#;]+.*$,,g' \
        -e '/^[[:space:]]*$/d' \
        etc/ssh/ssh_config

FROM clover/php:7.2

COPY --from=build /rootfs /
