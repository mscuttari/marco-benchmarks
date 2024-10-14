#!/bin/bash

./apptainer_build.sh
mkdir -p output
mkdir -p root

apptainer exec \
	--bind ./data:/data \
	--bind ./marco:/tmp/marco-src \
	--bind ./output:/output \
	--bind ./root:/root \
	--env COMPILE_TIMEOUT=1200 \
	--env SIMULATE_TIMEOUT=3600 \
	marco-benchmarks.sif \
	bash -c /data/run.sh
