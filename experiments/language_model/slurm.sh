#!/bin/bash
#SBATCH --partition=vgpu40
#SBATCH --gres=gpu:1
#SBATCH --job-name="DeBERTa-v3-large-semeval-2014"
#SBATCH --mail-user=s.limcorn@uqconnect.edu.au
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH -o bert-large-uncased.txt
#SBATCH -e bert-large-uncased.err

nvidia-smi
DeBERTa/experiments/language_model/rtd.sh deberta-v3-large-continue 