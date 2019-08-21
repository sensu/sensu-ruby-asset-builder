#!/bin/bash

mkdir -p dist
mkdir -p assets
mkdir -p scripts



# Debian platform
platform="debian" test_platforms="debian:8 debian:9 debian:10 ubuntu:14.04 ubuntu:16.04 ubuntu:18.04 centos:7" ./build_and_test_platform.sh
retval=$?
if [[ retval -ne 0 ]]; then
  exit $retval
fi

# Alpine platform
platform="alpine" test_platforms="alpine:latest alpine:3 alpine:3.8" ./build_and_test_platform.sh
retval=$?
if [[ retval -ne 0 ]]; then
  exit $retval
fi

# CentOS platform
platform="centos" test_platforms="centos:7 debian:8 debian:9 debian:10 ubuntu:14.04 ubuntu:16.04 ubuntu:18.04" ./build_and_test_platform.sh
retval=$?
if [[ retval -ne 0 ]]; then
  exit $retval
fi

# CentOS 6 platform
platform="centos6" test_platforms="centos:6 centos:7 debian:8 debian:9 debian:10 ubuntu:14.04 ubuntu:16.04 ubuntu:18.04" ./build_and_test_platform.sh
retval=$?
if [[ retval -ne 0 ]]; then
  exit $retval
fi
