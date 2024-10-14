#!/bin/bash

./apptainer_build.sh
mkdir -p output
apptainer exec --bind ./data:/data --bind ./marco:/tmp/marco-src --bind ./output:/output marco-benchmarks.sif bash -c /data/run.sh
