# Peruvian potato virome 
## VirusDetect *de novo* Assembly

Custom scripts to analyze the Peruvian potato virome using VirusDetect &amp; ViNA

## Usage 
```bash
sbatch virusdetect_hpg/virusdetect.sbatch vrl_Plants_239_U95 1-data/papa_reads/ 1-data/papa_genome/papa_Geno_AEWC01.fasta.gz
```

# Communication with support-system
>Hi Ricardo,
I apologize for overlooking this ticket. This issue usually occurs when you
load an incompatible perl module. You can avoid this by using module purge
command. I updated your script, however, looking at your job script
(virusdetect.sbatch) you are not actually passing any arguments to the
virus_detect.pl.
Regards,
Max

>Communication
>2021-06-22 09:01:36 EDT #open
>2021-06-29 15:25:25 EDT #reminder
>2021-07-30 10:22:31 EDT #answer
