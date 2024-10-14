#!/bin/bash

./apptainer_build.sh
apptainer exec --bind ./data:/data --bind ./marco:/tmp/marco-src --bind ./output:/output bash -c /data/run.sh
