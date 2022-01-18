override PHP_TARGETS = \
    5.6 5.6-git 5.6-composer \
    7.0 7.0-git 7.0-composer \
    7.1 7.1-git 7.1-composer \
    7.2 7.2-git 7.2-composer \
    7.3 7.3-git 7.3-composer \
    7.4 7.4-git 7.4-composer \
    8.0 8.0-git 8.0-composer \
    8.1 8.1-git 8.1-composer

all: ${PHP_TARGETS} latest latest-git latest-composer

.PHONY: all ${PHP_TARGETS} latest latest-git latest-composer

${PHP_TARGETS}:
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

latest latest-git latest-composer:
	docker tag clover/php:$^ clover/php:$@
	docker push clover/php:$@

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

latest: 8.1
latest-git: 8.1-git
latest-composer: 8.1-composer
