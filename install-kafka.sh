#!/usr/bin/env bash
# Instructions from: http://kafka.apache.org/quickstart

# Run as elevated user

set -ex

KAFKA_VERSION=1.1.0
KAFKA_TARGET_DIR=/usr/local/kafka
KAFKA_LOG_DIR=/tmp/kafka-logs
sudo mkdir ${KAFKA_LOG_DIR}

wget -O kafka-${KAFKA_VERSION}.tgz http://apache.mirrors.hoobly.com/kafka/${KAFKA_VERSION}/kafka_2.12-${KAFKA_VERSION}.tgz
tar -zxf kafka-${KAFKA_VERSION}.tgz
sudo mv kafka_2.12-${KAFKA_VERSION} ${KAFKA_TARGET_DIR}

sudo chown ubuntu:ubuntu -R ${KAFKA_TARGET_DIR}
sudo chown ubuntu:ubuntu -R ${KAFKA_LOG_DIR}
${KAFKA_TARGET_DIR}/bin/kafka-server-start.sh -daemon ${KAFKA_TARGET_DIR}/config/server.properties

set +ex
