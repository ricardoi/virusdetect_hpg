#!/bin/bash
#SBATCH --account=epi
#SBATCH --qos=epi
#SBATCH --job-name=ViNAt  #Job name
#SBATCH --mail-type=ALL   # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=ralcala@ufl.edu  # Where to send mail
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1gb   # Per processor memory
#SBATCH --time=6:00:00   # Walltime
#SBATCH --output=ViNAt_%j.out   # Name output file


grep 'blastn_references' blastn.html | cut -d/ -f2 | cut -d. -f1 > temp
grep 'blastx_references' blastx.html | cut -d/ -f2 | cut -d. -f1 >> temp
grep 'bgcolor' undetermined_blast.html | cut -d '>' -f45 | cut -d '<' -f1 >> temp
sort -u temp > acc_no_list.txt

#@ retrieve RefSeqn and RefSeqx with R? 
#@ Use R script of ViNAt

Rscript --vanilla ../ViNA_otro.R $REFLISTS

