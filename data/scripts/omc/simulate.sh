#!/bin/bash

path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

nx=$1
ny=$2
nz=$3
solver=$4

TIME_FILE=$LOG_DIR/simulation-time_$nx-$ny-$nz-$solver.txt
/usr/bin/time -p -o $TIME_FILE "$path/simulation_run.sh" $BUILD_DIR ThermalChipOO.Models.ThermalChipSimpleBoundary
cat $TIME_FILE
