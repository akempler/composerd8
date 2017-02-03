#!/usr/bin/env sh

set -e

cat config/drupal/settings.php >> drupal/sites/default/settings.php \
&& cp config/drupal/settings.local.php drupal/sites/default \
&& cp config/drupal/development.services.yml drupal/sites \
&& printf "Your site is scaffolded. Run\n\t'docker-compose up --build'\nto spin up. This will also install Drupal.\n"
