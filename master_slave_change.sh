#!/bin/bash

docker stop  ops_l2geth_1
docker rm ops_l2geth_1

docker stop ops_l2geth_slave_1
docker rm ops_l2geth_slave_1

function startSlave(){
  docker run --net bridge -itd -p 8545:8545 -p 8546:8546 --env-file ./haenvs/slave/geth.env \
  -v /data/l2geth_slave:/root/.ethereum/geth --restart unless-stopped  --name=l2_geth ethereumbitnetwork/l2geth
  echo "test"
}
