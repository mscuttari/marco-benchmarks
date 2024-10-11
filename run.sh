#!/bin/bash
./upgrade.sh
./build.sh
docker run --rm -v ./data:/data -v ./marco:/tmp/marco-src -v ./output:/output marco-benchmarks bash -c "/data/run.sh"
