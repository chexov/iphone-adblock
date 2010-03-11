#!/bin/sh
set -xue

egrep -v '^#' ./src/hosts| grep '127.0.0.1' |sort -k 2 > ./hosts.ads
cat ./src/localhost ./hosts.ads > ./hosts

