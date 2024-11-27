#!/bin/bash

nx=$1
ny=$2
nz=$3
parallel=$4
solver=$5
sim_args=${@:6}

TIME_FILE=$LOG_DIR/simulation-${parallel}-time_$nx-$ny-$nz-$solver.txt
/usr/bin/time -p -o $TIME_FILE $BUILD_DIR/simulation-${parallel}-$nx-$ny-$nz-$solver $sim_args > $RESULTS_DIR/results-${parallel}-$nx-$ny-$nz-$solver.csv
cat $TIME_FILE
