#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -M lchebouba@gmail.com
#$ -N caspo-test
#$ -V
#$ -q max-1m.q


source activate caspo-env

caspo learn kegg.sif data_MIDAS_PR.csv 10 --length 2

source deactivate
