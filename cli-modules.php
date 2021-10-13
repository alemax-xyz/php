<?php

echo '#!/bin/sh', PHP_EOL;
echo PHP_EOL;
echo 'BASE=/etc/php/', PHP_MAJOR_VERSION, '.', PHP_MINOR_VERSION, PHP_EOL;
echo 'MODS=$BASE/mods-available', PHP_EOL;
echo 'CONF=$BASE/cli/conf.d', PHP_EOL;
echo PHP_EOL;

$modules = [];
foreach (glob('/etc/php/' . PHP_MAJOR_VERSION . '.' . PHP_MINOR_VERSION . '/mods-available/*.ini') as $file) {
    $module = basename($file, '.ini');
    $priority = 20;
    if (preg_match('/;\s*priority\s*=\s*([0-9]+)/i', file_get_contents($file), $matches) == 1)
        $priority = (int)$matches[1];

    $modules[strtoupper(str_replace('-', '_', $module))] = [
        'name' => $module,
        'priority' => $priority,
        'file' => str_replace('/etc/php/' . PHP_MAJOR_VERSION . '.' . PHP_MINOR_VERSION . '/mods-available', '$MODS', $file),
        'link' => sprintf('$CONF/%d-%s.ini', $priority, $module),
    ];
}

echo 'if [ \( "${PHP_MODULES_ALL:-1}" != 0 -a -z "${PHP_CLI_MODULES_ALL}" \) -o \( "${PHP_CLI_MODULES_ALL}" != 0 -a -n "${PHP_CLI_MODULES_ALL}" \) ]; then', PHP_EOL;

if (isset($modules['IMAGICK']) && isset($modules['GMAGICK']))
    echo '	[ \( "${PHP_MODULE_IMAGICK:-1}" = 0 -a -z "${PHP_CLI_MODULE_IMAGICK}" \) -o "${PHP_CLI_MODULE_IMAGICK:-1}" = 0 ] || PHP_CLI_MODULE_GMAGICK=0', PHP_EOL, PHP_EOL;

foreach ($modules as $module => $meta) {
    printf(
        '	[ \( "${PHP_MODULE_%1$s:-1}" = 0 -a -z "${PHP_CLI_MODULE_%1$s}" \) -o "${PHP_CLI_MODULE_%1$s:-1}" = 0 ] && rm -f %3$s || ln -sf %2$s %3$s' . PHP_EOL,
        $module,
        $meta['file'],
        $meta['link']
    );
}

echo 'else', PHP_EOL;

foreach ($modules as $module => $meta) {
    printf(
        '	[ \( "${PHP_MODULE_%1$s:-0}" != 0 -a -z "${PHP_CLI_MODULE_%1$s}" \) -o "${PHP_CLI_MODULE_%1$s:-0}" != 0 ] && ln -sf %2$s %3$s || rm -f %3$s' . PHP_EOL,
        $module,
        $meta['file'],
        $meta['link']
    );
}
echo 'fi', PHP_EOL;

?>
