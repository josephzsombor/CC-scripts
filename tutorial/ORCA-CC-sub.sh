#!/bin/bash 

#SBATCH --nodes=1
#SBATCH --ntasks=4                # cpus, the nprocs defined in the input file
#SBATCH --mem-per-cpu=4G           # memory per cpu
#SBATCH --time=07-00:00            # time (DD-HH:MM)

module load nixpkgs/16.09
module load gcc/7.3.0
module load openmpi/3.1.4
module load orca/4.2.1
$EBROOTORCA/orca CO.inp > CO.out

