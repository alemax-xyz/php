#!/bin/sh

REALPATH="$(realpath $0)"
CWD="$(dirname "${REALPATH}")"

for PHP in "5.6" "7.0" "7.1" "7.2" "7.3" "7.4" "8.0" "8.1" "8.2" "8.3" "8.4"; do
	echo "${PHP}:"
	for WHAT in "cli-modules" "cli-ini" "fpm-modules" "fpm-ini"; do
		echo " * ${WHAT}"
		docker run -it --rm --mount type=bind,source="${CWD}/${WHAT}.php",target=/var/www/${WHAT}.php clover/php:${PHP} php /var/www/${WHAT}.php | tr -d '\r' > "${CWD}/${PHP}/init/30-php-${WHAT}.sh"
	done
done
