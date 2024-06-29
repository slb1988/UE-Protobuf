#!/bin/sh
# Copyright Luckey, Inc. All Rights Reserved.
#
# Simple wrapper around build-Ios.sh using the
# .command extension enables it to be run from the OSX Finder.

sh "$(dirname "$0")"/build-Ios.sh "$@"
