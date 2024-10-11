#!/bin/bash

path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

"$path/marco/run.sh"
"$path/omc/run.sh"

rm -rf $BUILD_DIR
tar -czvf /output/run-$(date +%s).tar.gz $LOG_DIR $RESULTS_DIR &> /dev/null
rm -rf $LOG_DIR
rm -rf $RESULTS_DIR
