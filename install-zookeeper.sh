#!/usr/bin/env bash

# Instructions from:

# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

# Run as elevated user

set -ex

ZOOKEEPER_DATA_DIR=/var/lib/zookeeper
ZOOKEEPER_TARGET_DIR=/usr/local/zookeeper
ZOOKEEPER_VERSION=3.4.12
sudo mkdir -p ${ZOOKEEPER_DATA_DIR}
wget -O zookeeper-${ZOOKEEPER_VERSION}.tar.gz http://apache.mirrors.hoobly.com/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz
tar -zxf zookeeper-${ZOOKEEPER_VERSION}.tar.gz
sudo mv zookeeper-${ZOOKEEPER_VERSION} ${ZOOKEEPER_TARGET_DIR}
sudo cp /vagrant/conf/zoo.cfg ${ZOOKEEPER_TARGET_DIR}/conf

sudo chown ubuntu:ubuntu -R ${ZOOKEEPER_TARGET_DIR}
sudo chown ubuntu:ubuntu -R ${ZOOKEEPER_DATA_DIR}
. ${ZOOKEEPER_TARGET_DIR}/bin/zkServer.sh start
set +ex
