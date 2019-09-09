#!/usr/bin/env bash

while true; do
    DATAPOINT="$(jot -r 1 1 100)"
    echo "push $DATAPOINT"
    echo "some_metric $DATAPOINT" | curl --data-binary @- http://pushgateway:9091/metrics/job/some_job
    sleep 0.2
done