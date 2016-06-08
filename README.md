- clone this repo onto a target OS.

- if you're using a plain CentOS 6.7 install, you'll need some repos first and software collections:
yum install epel-release centos-release-scl

- to build this you need to install the following prerequisites:
yum install gcc gcc-c++ make patch file libicu-devel zlib-devel libyaml-devel libxml2 libxml2-devel libxslt libxslt-devel git tar bzip2 jemalloc jemalloc-devel GeoIP GeoIP-devel snappy snappy-devel rh-ruby22-rubygem-bundler rh-ruby22-ruby-devel rh-ruby22-rubygems-devel rpm-build

- Run install-gems.sh
./install-gems.sh

- build rpm, and update the --iteration parameter:
cd dist
opt/athena/fluentd/bin/fpm -f -s dir -t rpm -n athena-fluentd -a x86_64 -v 0.12.20 --iteration <change this> --epoch 0 --config-files etc/fluent/fluent.conf --rpm-os linux --license 'Apache License, Version 2.0' --description 'FluentD Log Collector' .
