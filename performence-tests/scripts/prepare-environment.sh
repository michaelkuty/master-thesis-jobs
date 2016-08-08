#!/bin/bash -xe

run_tests() {

ITERATIONS=$1
TEST=$2
CLOUD=$3

./pkb.py --zones=dev01 --benchmarks=$TEST --cloud=$CLOUD --image=ubuntu-14-04-x64-1455869035 --openstack_network=tcp-lab-public-mjk --openstack_image_username=root --openstack_image_username=root --run_stage=provision &>> /tmp/perfkit.log

RUN_URI="$(tail -1 /tmp/perfkit.log | grep -o '........$')"

echo $RUN_URI
