#!/bin/bash
#SBATCH --job-name="qiime_classifier"
#SBATCH --time=4:00:00   # walltime 
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32   # 16 processor core(s) per node X 2 threads per core
#SBATCH --partition=short    # partition type
#SBATCH --mail-user=briana.whitaker@usda.gov
#SBATCH --mail-type=BEGIN,END,FAIL

cd /project/mpm_fhb_genomics/whitaker/varsamp-qiime/
date
pwd
module load qiime2/2023.7


## classify
qiime feature-classifier classify-sklearn \
  --i-classifier classifier.qza \
  --i-reads seqs.qza \
  --o-classification taxonomy.qza
qiime metadata tabulate \
  --m-input-file taxonomy.qza \
  --o-visualization taxonomy.qzv
qiime tools export \
  --input-path taxonomy.qza \
  --output-path taxonomy_table
#biom convert 
#  -i taxonomy_table/feature-table.biom \
#  -o taxonomy_table/feature-table.tsv --to-tsv

date
