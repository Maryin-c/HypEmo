#!/bin/bash

#SBATCH --job-name=deberta_large
#SBATCH --output=./res/deberta_large_res.txt
#SBATCH --error=./res/deberta_large_error.txt
#SBATCH --time=120:00:00
#SBATCH --gres=gpu:a100-40:1
#SBATCH --mem=128G
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=e1350606@u.nus.edu

source ../../miniconda3/etc/profile.d/conda.sh
conda activate qwen

# GE
# python train.py --dataset go_emotion --batch_size 16 --seed 1234
# python train.py --dataset go_emotion --batch_size 16 --seed 2345
# python train.py --dataset go_emotion --batch_size 16 --seed 3456
python train.py --dataset go_emotion --batch_size 16 --seed 7890
# python train.py --dataset go_emotion --batch_size 16 --seed 5678

# ED
# python train.py --dataset ED --batch_size 16 --seed 1234
# python train.py --dataset ED --batch_size 16 --seed 2345
# python train.py --dataset ED --batch_size 16 --seed 3456
# python train.py --dataset ED --batch_size 16 --seed 4567
# python train.py --dataset ED --batch_size 16 --seed 5678
