#!/bin/bash
scl enable rh-ruby22 - << \EOF
. /opt/rh/rh-ruby22/enable
cd dist/opt/athena/fluentd
bundle package --all
bundle install --deployment --binstubs
EOF
