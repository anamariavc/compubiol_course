#!/bin/bash

#SBATCH --partition=learning                   # Partition
#SBATCH --nodes=1
#SBATCH --ntasks=1                              # Number of tasks (processes)
#SBATCH --time=0-1:00:00                           # Walltime
#SBATCH --job-name=test_Genoma_gpu                      # Job name
#SBATCH --output=%x_%j.out                      # Stdout (%x-jobName, %j-jobId)
#SBATCH --error=%x_%j.err                       # Stderr (%x-jobName, %j-jobId)
#SBATCH --mail-type=ALL                         # Mail notification
#SBATCH --mail-user=amvidalc@eafit.edu.co       # User Email


##### ENVIRONMENT CREATION #####
module load python/3.6.0_miniconda-4.3.11_gcc-11.2.0
source activate tensorflow_test

##### JOB COMMANDS #### 
source activate Test
ls -oh *sh
open sequence1.fasta
#!/bin/bash
infile=$1
