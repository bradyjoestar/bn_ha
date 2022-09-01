#!/bin/bash

git clone https://github.com/bitnetworkio/bitnetwork

cp -r haenvs bitnetwork/ops/
cp -r docker-compose.az0.yml  bitnetwork/ops/
cp -r docker-compose.az1.yml  bitnetwork/ops/
cp -r docker-compose.ec2.yml  bitnetwork/ops/

cd bitnetwork/ops/

docker-compose -f docker-compose.az0.yml -f docker-compose.az1.yml -f docker-compose.ec2.yml up
