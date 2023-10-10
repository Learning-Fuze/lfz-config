#!/bin/sh

# Do nothing if setup has already been completed
test -f .eslintrc && exit 0

echo Copying config files...
cp -r ./config/. ../../
