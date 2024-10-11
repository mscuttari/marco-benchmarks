#!/bin/bash

path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
"$path/scripts/install_marco.sh"
"$path/scripts/run.sh"
