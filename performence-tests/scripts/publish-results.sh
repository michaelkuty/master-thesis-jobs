#!/bin/bash

ITERATIONS=$1
TEST=$2
CLOUD=$3

for i in $(eval echo "{1..$ITERATIONS}"); do 

echo "Start "$i". iteration"

./pkb.py --zones=dev01 --benchmarks=$TEST --cloud=$CLOUD --image=ubuntu-14-04-x64-1455869035 --openstack_network=tcp-lab-public-mjk --openstack_image_username=root --openstack_image_username=root --run_stage=run --run_uri=$RUN_URI

sleep 10

done
