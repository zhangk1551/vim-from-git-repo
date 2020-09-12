#!/bin/zsh

p=`/usr/bin/realpath $1`
find $p -name .git  | awk -F\/ '{ print "alias vg-"$(NF-1)"=\"cd "$0"\/..\"" }' | sort > ~/.vg_alias
