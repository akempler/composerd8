# Composer template for Drupal 8 projects

A basic Drupal 8 installation. For a version containing docker as well, see the composerdocker branch.

First you need to [install composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).

After that you can create the project:

```
composer create-project akempler/composerd8:dev-pmaster project-dir --stability dev --no-interaction
```

Currently there is no ssh setup so just use docker exec to enter the containers. 
You can run drush from the sandbox container against the drupal and mysql containers.

With `composer require ...` you can download new dependencies to your
installation.

```
cd project-dir
composer require drupal/panels:8.*
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

* Drupal will be installed in the `drupal`-directory.
* Autoloader is implemented to use the generated composer autoloader in `vendor/autoload.php`,
  instead of the one provided by Drupal (`drupal/vendor/autoload.php`).
* Modules (packages of type `drupal-module`) will be placed in `drupal/modules/contrib/`
* Theme (packages of type `drupal-theme`) will be placed in `drupal/themes/contrib/`
* Profiles (packages of type `drupal-profile`) will be placed in `drupal/profiles/contrib/`
* Creates default writable versions of `settings.php` and `services.yml`.
* Creates `sites/default/files`-directory.

The following items are excluded from composer.json as they are often installed in a separate Docker container. 
However you can always add them using composer require or add them to composer.json:
* "drush/drush" : "~8.1",
* * Latest version of drush is installed locally for use at `vendor/bin/drush`.
* "drupal/console" : "~1.0",
* * Latest version of DrupalConsole is installed locally for use at `vendor/bin/drupal`.
