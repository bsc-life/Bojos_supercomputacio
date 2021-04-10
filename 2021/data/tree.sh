#!/bin/bash
#SBATCH --job-name=msa
#SBATCH -D .
#SBATCH --output=./debug/msa_output_%j.out
#SBATCH --error=./debug/msa_error_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
#SBATCH --time=01:00:00

module load mafft

mafft --retree 0 --treeout --thread 7 genoma_virus_chungo.filtered.fa.withref.nosynthetic > out.fa
