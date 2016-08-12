#!/bin/bash

. /opt/rh/rh-ruby22/enable

cd dist
rm -f *.rpm

test -d var/log/athena-fluentd  || mkdir -p var/log/athena-fluentd
test -d var/run/athena-fluentd  || mkdir -p var/run/athena-fluentd

# Increment the --iteration when packaging.
opt/athena/fluentd/bin/fpm -f -s dir -t rpm \
    -n athena-fluentd -a x86_64 \
    -v 0.12.27 --iteration 1 --epoch 0 \
    --config-files etc/athena-fluentd/athena-fluentd.conf \
    --rpm-os linux --license 'Apache License, Version 2.0' \
    --description 'FluentD Log Collector' \
    -d GeoIP \
    -d jemalloc \
    -d rh-ruby22 \
    -d rh-ruby22-ruby \
    -d rh-ruby22-ruby-irb \
    -d rh-ruby22-ruby-libs \
    -d rh-ruby22-rubygem-bundler \
    -d rh-ruby22-rubygem-json \
    -d rh-ruby22-rubygem-psych \
    -d rh-ruby22-rubygem-rdoc \
    -d rh-ruby22-rubygem-thor \
    -d rh-ruby22-rubygems \
    -d rh-ruby22-runtime \
    .
