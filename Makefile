override TARGETS = \
    5.6 5.6-git 5.6-composer \
    7.0 7.0-git 7.0-composer \
    7.1 7.1-git 7.1-composer \
    7.2 7.2-git 7.2-composer \
    7.3 7.3-git 7.3-composer \
    7.4 7.4-git 7.4-composer \
    8.0 8.0-git 8.0-composer \
    8.1 8.1-git 8.1-composer \
    8.2 8.2-git 8.2-composer \
    8.3 8.3-git 8.3-composer \
    8.4 8.4-git 8.4-composer \
    8.5 8.5-git 8.5-composer

TAG ?= clover/php
PLATFORM ?= linux/amd64,linux/arm64/v8

all: ${TARGETS} latest latest-git latest-composer

.PHONY: all ${TARGETS} latest latest-git latest-composer

${TARGETS}:
	docker buildx build --progress plain --platform ${PLATFORM} -t ${TAG}:$@ $@ --push

latest latest-git latest-composer:
	docker buildx build --progress plain --platform ${PLATFORM} -t ${TAG}:$@ $^ --push

5.6-git: 5.6
5.6-composer: 5.6-git

7.0-git: 7.0
7.0-composer: 7.0-git

7.1-git: 7.1
7.1-composer: 7.1-git

7.2-git: 7.2
7.2-composer: 7.2-git

7.3-git: 7.3
7.3-composer: 7.3-git

7.4-git: 7.4
7.4-composer: 7.4-git

8.0-git: 8.0
8.0-composer: 8.0-git

8.1-git: 8.1
8.1-composer: 8.1-git

8.2-git: 8.2
8.2-composer: 8.2-git

8.3-git: 8.3
8.3-composer: 8.3-git

8.4-git: 8.4
8.4-composer: 8.4-git

8.5-git: 8.5
8.5-composer: 8.5-git

latest: 8.5
latest-git: 8.5-git
latest-composer: 8.5-composer
