#!/bin/bash


RUN_URI=$1

cp -r /tmp/perfkitbenchmarker/* ./results/$CLOUD/$TEST

# teardown

./pkb.py --benchmarks=$TEST --cloud=$CLOUD --run_stage=teardown --run_uri=$RUN_URI


rm -rf /tmp/perfkitbenchmarker
