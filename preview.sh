#!/usr/bin/env bash

set -x
set -e

bundle exec jekyll clean

# sassc --style compact sass/screen.scss > sass/main_unmin.css

# cargo install grass
grass sass/screen.scss sass/main_unmin.css 

# npm install lightningcss-cli
npx lightningcss --minify --output-file stylesheets/main.css sass/main_unmin.css

bundle exec jekyll serve
