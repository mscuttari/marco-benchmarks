#!/bin/bash

nx=$1
ny=$2
nz=$3
solver=$4
sim_args=${@:5}

echo "w/ multithreading"
W_MT_FILE=$LOG_DIR/simulation-parallel-time_$nx-$ny-$nz-$solver.txt
/usr/bin/time -p -o $W_MT_FILE $BUILD_DIR/simulation-parallel-$nx-$ny-$nz-$solver $sim_args > $RESULTS_DIR/results-parallel-$nx-$ny-$nz-$solver.csv
cat $W_MT_FILE

echo "w/o multithreading"
WO_MT_FILE=$LOG_DIR/simulation-non-parallel-time_$nx-$ny-$nz-$solver.txt
/usr/bin/time -p -o $WO_MT_FILE $BUILD_DIR/simulation-non-parallel-$nx-$ny-$nz-$solver --disable-multithreading $sim_args > $RESULTS_DIR/results-non-parallel-$nx-$ny-$nz-$solver.csv
cat $WO_MT_FILE
