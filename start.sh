#!/bin/bash

git clone https://github.com/mantlenetworkio/mantle

cp -r haenvs mantle/ops/
cp -r docker-compose.az0.yml  mantle/ops/
cp -r docker-compose.az1.yml  mantle/ops/
cp -r docker-compose.ec2.yml  mantle/ops/
cp -r docker-compose-master-slave-change.yml  mantle/ops/
cp -r master_slave_change.sh mantle/ops/

cd mantle/ops/

docker-compose -f docker-compose.az0.yml -f docker-compose.az1.yml -f docker-compose.ec2.yml up
