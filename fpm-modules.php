<?php

echo 'BASE=/etc/php/', PHP_MAJOR_VERSION, '.', PHP_MINOR_VERSION, PHP_EOL;
echo 'MODS=$BASE/mods-available', PHP_EOL;
echo 'CONF=$BASE/fpm/conf.d', PHP_EOL;
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

echo 'if [ \( "${PHP_MODULES_ALL:-1}" != 0 -a -z "${PHP_FPM_MODULES_ALL}" \) -o \( "${PHP_FPM_MODULES_ALL}" != 0 -a -n "${PHP_FPM_MODULES_ALL}" \) ]; then', PHP_EOL;

if (isset($modules['IMAGICK']) && isset($modules['GMAGICK']))
    echo '	[ \( "${PHP_MODULE_IMAGICK:-1}" = 0 -a -z "${PHP_FPM_MODULE_IMAGICK}" \) -o "${PHP_FPM_MODULE_IMAGICK:-1}" = 0 ] || PHP_FPM_MODULE_GMAGICK=0', PHP_EOL, PHP_EOL;
if (isset($modules['SWOOLE']) && isset($modules['OPENSWOOLE']))
    echo '	[ \( "${PHP_MODULE_SWOOLE:-1}" = 0 -a -z "${PHP_FPM_MODULE_SWOOLE}" \) -o "${PHP_FPM_MODULE_SWOOLE:-1}" = 0 ] || PHP_FPM_MODULE_OPENSWOOLE=0', PHP_EOL, PHP_EOL;

foreach ($modules as $module => $meta) {
    printf(
        '	if [ \( "${PHP_MODULE_%1$s:-1}" = 0 -a -z "${PHP_FPM_MODULE_%1$s}" \) -o "${PHP_FPM_MODULE_%1$s:-1}" = 0 ]; then' . PHP_EOL .
        '		[ -h "%3$s" ] && suexec rm -f "%3$s"' . PHP_EOL .
        '	else' . PHP_EOL .
        '		[ -e "%3$s" ] || suexec ln -sf "%2$s" "%3$s"' . PHP_EOL .
        '	fi' . PHP_EOL,
        $module,
        $meta['file'],
        $meta['link']
    );
}

echo 'else', PHP_EOL;

foreach ($modules as $module => $meta) {
    printf(
        '	if [ \( "${PHP_MODULE_%1$s:-0}" != 0 -a -z "${PHP_FPM_MODULE_%1$s}" \) -o "${PHP_FPM_MODULE_%1$s:-0}" != 0 ]; then' . PHP_EOL .
        '		[ -e "%3$s" ] || suexec ln -sf "%2$s" "%3$s"' . PHP_EOL .
        '	else' . PHP_EOL .
        '		[ -h "%3$s" ] && suexec rm -f %3$s' . PHP_EOL .
        '	fi' . PHP_EOL,
        $module,
        $meta['file'],
        $meta['link']
    );
}
echo 'fi', PHP_EOL;

?>
