#!/bin/sh

set -e

composer global require ghostzero/bunny

sh -c "$COMPOSER_HOME/vendor/bin/bunny $*"
