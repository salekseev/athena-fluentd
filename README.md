- clone this repo onto a target OS.

- to build this you need to install the following prerequisites:
yum install gcc gcc-c++ make patch file libicu-devel zlib-devel libyaml-devel libxml2 libxml2-devel libxslt libxslt-devel git tar bzip2 jemalloc jemalloc-devel GeoIP GeoIP-devel snappy snappy-devel rh-ruby22-rubygem-bundler rh-ruby22-ruby-devel rh-ruby22-rubygems-devel rpm-build

- then switch to the SCL:
scl enable rh-ruby22 bash

- then prepare the bundle:
bundle package
bundle install --deployment --binstubs

- build rpm:
fpm -s dir -t rpm -n athena-fluentd -a x86_64 -v 0.12.20 --iteration el6.3.ath --epoch 0 --config-files etc/fluent/fluent.conf --rpm-os linux --license 'Apache License, Version 2.0' --description 'FluentD Log Collector' .