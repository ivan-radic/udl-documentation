#!/usr/bin/env bash

bootstrap_path=$(bundle info bootstrap --path)

# make directory if not exist
mkdir -p _sass

# remove existing bootstrap files
rm -rf _sass/bootstrap
rm -rf _sass/_bootstrap-grid.scss
rm -rf _sass/_bootstrap-reboot.scss
rm -rf _sass/_bootstrap.scss

cp -R $bootstrap_path/assets/stylesheets/ _sass
