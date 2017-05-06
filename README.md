# Composer template for Drupal 8 projects

A basic Drupal 8 installation with some additional common contrib modules.

First you need to [install composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).

After that you can create the project:

```
composer create-project akempler/composerd8:dev-playground project-dir --stability dev --no-interaction
```

A default admin account is created with username/password of:  
admin/password

A default settings.local.php file is created with a trusted host pattern of localhost and local.drupal8.com.

With `composer require ...` you can download new dependencies to your
installation.

```
cd project-dir
composer require drupal/panels:8.*
```

## What does the template do?

Provides a basic docker environment with some commonly used contrib modules such as:

Additionally it adds some useful modules/themes such as:
* [page_manager](https://www.drupal.org/project/page_manager)
* [panels](https://www.drupal.org/project/panels)
* [panelizer](https://www.drupal.org/project/panelizer)
* [paragraphs](https://www.drupal.org/project/paragraphs)
* [field_group](https://www.drupal.org/project/field_group)
* [admin_toolbar](https://www.drupal.org/project/admin_toolbar)
* [media_entity](https://www.drupal.org/project/media_entity)
* [media_entity_image](https://www.drupal.org/project/media_entity_image)
* [media_entity_document](https://www.drupal.org/project/media_entity_document)
* [config_devel](https://www.drupal.org/project/config_devel)
* [entity_browser](https://www.drupal.org/project/entity_browser)
* [embed](https://www.drupal.org/project/embed)
* [entity_embed](https://www.drupal.org/project/entity_embed)
* [dropzone](https://www.drupal.org/project/dropzone)
* [devel](https://www.drupal.org/project/devel)
* [token](https://www.drupal.org/project/token)
* [pathauto](https://www.drupal.org/project/pathauto)
* [restui](https://www.drupal.org/project/restui)
* [display_suite](https://www.drupal.org/project/ds)

When installing the given `composer.json` some tasks are taken care of:

* Drupal will be installed in the `web`-directory.
* Autoloader is implemented to use the generated composer autoloader in `vendor/autoload.php`,
  instead of the one provided by Drupal (`web/vendor/autoload.php`).
* Modules (packages of type `drupal-module`) will be placed in `web/modules/contrib/`
* Theme (packages of type `drupal-theme`) will be placed in `web/themes/contrib/`
* Profiles (packages of type `drupal-profile`) will be placed in `web/profiles/contrib/`
* Creates default versions of `settings.php`, `settings.local.php` and `services.yml`.
* Creates `sites/default/files`-directory.

The following items are excluded from composer.json as they are often installed in a separate Docker container. 
However you can always add them using composer require or add them to composer.json:
* "drush/drush" : "~8.1",
* * Latest version of drush is installed locally for use at `vendor/bin/drush`.
* "drupal/console" : "~1.0",
* * Latest version of DrupalConsole is installed locally for use at `vendor/bin/drupal`.
