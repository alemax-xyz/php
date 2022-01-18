all: 5.6 5.6-git 5.6-composer 7.0 7.0-git 7.0-composer 7.1 7.1-git 7.1-composer 7.2 7.2-git 7.2-composer 7.3 7.3-git 7.3-composer 7.4 7.4-git 7.4-composer 8.0 8.0-git 8.0-composer 8.1 8.1-git 8.1-composer latest latest-git latest-composer

.PHONY: all 5.6 5.6-git 5.6-composer 7.0 7.0-git 7.0-composer 7.1 7.1-git 7.1-composer 7.2 7.2-git 7.2-composer 7.3 7.3-git 7.3-composer 7.4 7.4-git 7.4-composer 8.0 8.0-git 8.0-composer 8.1 8.1-git 8.1-composer latest latest-git latest-composer

5.6:
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

5.6-git: 5.6
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

5.6-composer: 5.6-git
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.0:
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.0-git: 7.0
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.0-composer: 7.0-git
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.1:
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.1-git: 7.1
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.1-composer: 7.1-git
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.2:
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.2-git: 7.2
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.2-composer: 7.2-git
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.3:
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.3-git: 7.3
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.3-composer: 7.3-git
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.4:
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.4-git: 7.4
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

7.4-composer: 7.4-git
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

8.0:
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

8.0-git: 8.0
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

8.0-composer: 8.0-git
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

8.1:
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

8.1-git: 8.1
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

8.1-composer: 8.1-git
	docker build -t clover/php:$@ $@
	docker push clover/php:$@

latest: 8.1
	docker tag clover/php:8.1 clover/php:$@
	docker push clover/php:$@

latest-git: 8.1-git
	docker tag clover/php:8.1-git clover/php:$@
	docker push clover/php:$@

latest-composer: 8.1-composer
	docker tag clover/php:8.1-composer clover/php:$@
	docker push clover/php:$@
