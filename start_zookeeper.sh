#!/bin/bash

bin/pulsar-daemon start zookeeper
bin/pulsar initialize-cluster-metadata \
  --cluster pulsar-cluster-zk \
  --zookeeper 172.31.7.191:2181 \
  --configuration-store 172.31.7.191:2181 \
  --web-service-url http://172.31.7.191:8080 \
  --web-service-url-tls https://172.31.7.191:8443 \
  --broker-service-url pulsar://172.31.7.191:6650 \
  --broker-service-url-tls pulsar+ssl://172.31.7.191:6651
