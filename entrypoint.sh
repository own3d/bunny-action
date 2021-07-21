#!/bin/sh

set -e

composer global require own3d/bunny-cli

sh -c "$COMPOSER_HOME/vendor/bin/bunny $*"
