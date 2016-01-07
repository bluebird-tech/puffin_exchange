#!/usr/bin/env bash

[ -n "$DEBUG" ] && set -x

[ -z "$RAILS_ENV" ] && RAILS_ENV=development
RACK_ENV=$RAILS_ENV
export RAILS_ENV
export RACK_ENV

bundle="bundle exec"
rake="$bundle rake"
bundler_cache=${BUNDLER_CACHE:-vendor/bundle}

bundle check --path=$bundler_cache || bundle install --path=$bundler_cache
