#!/bin/bash
#SBATCH --job-name=GoLLIE-7B_CodeLLaMA
#SBATCH --cpus-per-task=16
#SBATCH --gres=gpu:1
#SBATCH --mem=128G
#SBATCH --output=.slurm/GoLLIE-7B_CodeLLaMA.out.txt
#SBATCH --error=.slurm/GoLLIE-7B_CodeLLaMA.err.txt


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export TOKENIZERS_PARALLELISM=true
export TRANSFORMERS_NO_ADVISORY_WARNINGS=true
export CUDA_VISIBLE_DEVICES=0,1,2,3
#export WANDB_ENTITY=hitz-GoLLIE
#export WANDB_PROJECT=GoLLIEv1.0

echo CUDA_VISIBLE_DEVICES "${CUDA_VISIBLE_DEVICES}"


# Call this script from root directory as: sbatch bash_scripts/GoLLIE-7B_CodeLLaMA.sh
python3 -m src.run configs/model_configs/GoLLIE-7B_CodeLLaMA.yaml
