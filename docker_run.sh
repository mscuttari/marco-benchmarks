#!/bin/bash
./docker_upgrade.sh
./docker_build.sh
docker run --rm -v ./data:/data -v ./marco:/tmp/marco-src -v ./output:/output marco-benchmarks bash -c "/data/run.sh"
