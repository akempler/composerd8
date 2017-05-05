
$config_directories[CONFIG_SYNC_DIRECTORY] = '../config/drupal/sync';

if (file_exists(__DIR__ . '/settings.local.php')) {
  include __DIR__ . '/settings.local.php';
}
