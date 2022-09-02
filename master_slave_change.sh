#!/bin/bash

docker stop  ops_l2geth_1
docker rm ops_l2geth_1

docker stop ops_l2geth_slave_1
docker rm ops_l2geth_slave_1

docker-compose -f docker-compose-master-slave-change.yml up
