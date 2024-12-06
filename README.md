# MARCO dialects paper's benchmarks
## Preparation
Clone the MARCO repository into the root folder. The source code must be directly within a folder named `marco`.

## Run
It is possible to run the benchmarks using both Docker and Apptainer.
According to the desired container system, execute either the `docker_run.sh` or `apptainer_run.sh` scripts.

# Results
At the end of the benchmarks execution, an archive containing the logs and results is produced under the `output` folder.
Once unpacked, it is possible to use the `csv_exporter` tool to automatically extract the timings and export them in CSV format. The CSV output can then be inserted into the first sheet of the spreadsheet template. The remaining sheets are views on the first page.
Notice that additional measurements (i.e., multithreaded executions) are performed with respect to the published results (which, instead, refer only to the simulations performed w/o MT).
