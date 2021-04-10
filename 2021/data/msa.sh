#!/bin/bash
#SBATCH --job-name=msa
#SBATCH -D .
#SBATCH --output=./debug/msa_output_%j.out
#SBATCH --error=./debug/msa_error_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
#SBATCH --time=02:00:00

module load mafft

mafft --thread 24 --threadtb 5 --threadit 0 --inputorder --maxiterate 0 genoma_virus_chungo.filtered.fa.withref.nosynthetic > ali_genoma_virus_chungo.fa

