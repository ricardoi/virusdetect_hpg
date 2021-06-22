#!/bin/sh
#SBATCH --account=epi
#SBATCH --qos=epi-b
#SBATCH --job-name=virusdetect
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ralcala@ufl.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=8gb
#SBATCH --time=10:00:00
#SBATCH --output=logs/vd-log_%a.out
#SBATCH --array=1-989%100

date;hostname;pwd

#@ Command example
#	sbatch virusdetect_hpg/virusdetect.sbatch vrl_Plants_239_U95 1-data/papa_reads/ 1-data/papa_genome/papa_Geno_AEWC01.fasta.gz

RUN=${SLURM_ARRAY_TASK_ID} #998}

#@ Adding PATHs to directories/ 
DATABASE=$1 #@ DATABASE $PATH
IN_DIR=$2 #@ FILE_NAME $PATH
HOST=$3 #@ HOST $PATH

# Array task
in_file=$(ls ${IN_DIR} | sed -n ${RUN}p)
echo "Run ${RUN}: Input file ${in_file}"

module load virusdetect

virus_detect.pl --reference "$DATABASE" "$IN_DIR$in_file" --host_reference "$HOST" --thread_num 8

