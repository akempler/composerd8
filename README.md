# Composer template for Drupal 8 migration projects

First you need to [install composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).

After that you can create the project:

```
composer create-project akempler/composerd8:dev-migrate some-dir --stability dev --no-interaction
```

With `composer require ...` you can download new dependencies to your
installation.

```
cd some-dir
composer require drupal/devel:8.*
```

## What does the template do?

Provides some basic organization and setup for a drupal 8 installation.

Additionally it adds some useful modules/themes such as:
* [adminimal_theme](https://www.drupal.org/project/adminimal_theme)
* [admin_toolbar](https://www.drupal.org/project/admin_toolbar)
* [media_entity](https://www.drupal.org/project/media_entity)
* [media_entity_image](https://www.drupal.org/project/media_entity_image)
* [config_devel](https://www.drupal.org/project/config_devel)
* [features](https://www.drupal.org/project/features)
* [entity_browser](https://www.drupal.org/project/entity_browser)
* [rules](https://www.drupal.org/project/rules)
* [devel](https://www.drupal.org/project/devel)
* [token](https://www.drupal.org/project/token)
* [pathauto](https://www.drupal.org/project/pathauto)
* [restui](https://www.drupal.org/project/restui)

When installing the given `composer.json` some tasks are taken care of:

* Drupal will be installed in the `web`-directory.
* Autoloader is implemented to use the generated composer autoloader in `vendor/autoload.php`,
  instead of the one provided by Drupal (`web/vendor/autoload.php`).
* Modules (packages of type `drupal-module`) will be placed in `web/modules/contrib/`
* Theme (packages of type `drupal-theme`) will be placed in `web/themes/contrib/`
* Profiles (packages of type `drupal-profile`) will be placed in `web/profiles/contrib/`
* Creates default writable versions of `settings.php` and `services.yml`.
* Creates `sites/default/files`-directory.
* Latest version of drush is installed locally for use at `vendor/bin/drush`.
* Latest version of DrupalConsole is installed locally for use at `vendor/bin/drupal`.
