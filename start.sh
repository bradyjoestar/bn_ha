#!/bin/bash

git clone https://github.com/bitnetworkio/bitnetwork

cp -r haenvs bitnetwork/ops/
cp -r docker-compose.az0.yml docker-compose.az1.yml docker-compose.ec2.yml bitnetwork/ops/

cd bitnetwork/ops/

docker-compose -f docker-compose.az0.yml docker-compose.az1.yml docker-compose.ec2.yml up
