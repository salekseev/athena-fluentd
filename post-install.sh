#!/bin/sh

getent passwd athena-fluentd 2> /dev/null >&2 || useradd -r athena-fluentd

test -d /var/log/athena-fluentd && chown athena-fluentd /var/log/athena-fluentd
test -d /var/run/athena-fluentd && chown athena-fluentd /var/run/athena-fluentd
