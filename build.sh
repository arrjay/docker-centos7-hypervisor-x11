#!/usr/bin/env bash

set -ex

[ -z "${NOPUSH}" ] && docker pull "${DOCKER_SINK}/centos7-hypervisor"
docker tag  "${DOCKER_SINK}/centos7-hypervisor" "centos7-hypervisor"

set -u

cd docker && docker build -t "build/centos7-hypervisor-x11" .
