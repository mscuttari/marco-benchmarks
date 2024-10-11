#!/bin/bash

path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

solver=$1
sim_args=${@:2}

"$path/compile_simulate_config.sh" 4 4 4 $solver
"$path/compile_simulate_config.sh" 6 6 4 $solver
"$path/compile_simulate_config.sh" 8 8 4 $solver
"$path/compile_simulate_config.sh" 12 12 4 $solver
#"$path/compile_simulate_config.sh" 15 15 5 $solver
#"$path/compile_simulate_config.sh" 18 18 6 $solver
#"$path/compile_simulate_config.sh" 24 24 8 $solver
#"$path/compile_simulate_config.sh" 33 33 11 $solver
#"$path/compile_simulate_config.sh" 39 39 13 $solver
#"$path/compile_simulate_config.sh" 54 54 18 $solver
#"$path/compile_simulate_config.sh" 66 66 22 $solver
#"$path/compile_simulate_config.sh" 84 84 28 $solver
#"$path/compile_simulate_config.sh" 114 114 38 $solver
#"$path/compile_simulate_config.sh" 144 144 48 $solver
#"$path/compile_simulate_config.sh" 183 183 61 $solver
#"$path/compile_simulate_config.sh" 246 246 82 $solver
#"$path/compile_simulate_config.sh" 312 312 104 $solver

#"$path/compile_simulate.sh" 393 393 131 $solver
