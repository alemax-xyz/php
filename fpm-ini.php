<?php

echo '#!/bin/sh', PHP_EOL;
echo PHP_EOL;

echo '(', PHP_EOL;
foreach (ini_get_all() as $parameter => $info) {
    printf(
        '	if [ -n "${PHP_FPM_%1$s+1}" ]; then' . PHP_EOL .
        '		echo "%2$s=${PHP_FPM_%1$s}"' . PHP_EOL .
        '	elif [ -n "${PHP_%1$s+1}" ]; then' . PHP_EOL .
        '		echo "%2$s=${PHP_%1$s}"' . PHP_EOL .
        '	fi' . PHP_EOL,
        strtoupper(str_replace('.', '_', $parameter)),
        $parameter
    );
}
printf(
    ') > /etc/php/%s.%s/fpm/conf.d/99-custom.ini' . PHP_EOL,
    PHP_MAJOR_VERSION,
    PHP_MINOR_VERSION
);

?>
