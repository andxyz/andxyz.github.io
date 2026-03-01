#!/usr/bin/env bash

set -x
set -e

bundle exec jekyll clean
# sassc --style compact sass/screen.scss > stylesheets/main.css
grass sass/screen.scss stylesheets/main.css 
bundle exec jekyll serve
