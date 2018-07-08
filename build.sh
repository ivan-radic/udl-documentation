#!/usr/bin/env bash

bootstrap_path=$(bundle show bootstrap)

mkdir -p _sass
cp -R $bootstrap_path/assets/stylesheets/ _sass
