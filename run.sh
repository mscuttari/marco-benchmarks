#!/bin/bash
./upgrade.sh
./build.sh
docker exec -v ./data:/data -v ./marco:/tmp/marco-src -v ./output:/output marco-benchmarks /data/run.sh
