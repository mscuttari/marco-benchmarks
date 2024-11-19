#!/bin/bash

SIMULATION_DIR=$1
SIMULATION_FILE=$2

cd $SIMULATION_DIR
./$SIMULATION_FILE -r=results.csv -noEquidistantTimeGrid -lv=LOG_STATS_V
cd -
