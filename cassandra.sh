#!/usr/bin/env bash

echo "\n----- Installing Cassandra ------\n"
# refer to http://cassandra.apache.org/download/
echo "deb http://www.apache.org/dist/cassandra/debian 310x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -
sudo apt-get update
# sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-key A278B781FE4B2BDA
sudo apt-get install cassandra

# open ports for cassandra to run in the private ip address, i.e. not localhost
sudo ufw allow 8888
sudo ufw allow 7000
sudo ufw allow 7001
sudo ufw allow 7199
sudo ufw allow 9042
sudo ufw allow 9160
sudo ufw allow 61620
sudo ufw allow 61621
echo "\n----- DONE ------\n"

