#!/bin/perl
#@ VirusDetect is a software for the identification of viruses
#@ 	from small single RNAs sequences genearated from Illumina
#@ Reference: Zheng et al., 2017. VirusDetect. doi:10.1016/j.virol.2016.10.017
#@ VirusDetect version 1.7 for linux

#@ Command usage example
#      sh virusdetect_v17.sh vrl_plant 1-data/papa_reads/Pun-040.clean.fq.gz

DATABASE=$1 #@ Add PATH to database
FILENAME=$2 #@ Add PATH/file name

module load ufrc
module load perl
module load virusdetect

#@ example program
# perl bin/virus_identify.pl --reference databases/vrl_plant input_contig.fasta
#@ runing virusdetect for HPG for papa - note: I will make it standard for any one willing to use it

perl ~/virus_detect.pl --reference "$DATABASE" "$FILENAME" --host_reference 1-data/papa_genome/papa_Geno_AEWC01.fasta.gz --thread_num 8
