#!/bin/bash
# basic
mamba create -n GoLLIE python=3.11 -y; mamba activate GoLLIE;
mamba install -n GoLLIE \
  cuda-libraries=11.8 cuda-libraries-dev=11.8 cuda-cudart=11.8 cuda-cudart-dev=11.8 \
  cudatoolkit=11.8 cuda-nvrtc=11.8 cuda-nvrtc-dev=11.8 cuda-driver-dev=11.8 \
  cuda-nvcc=11.8 cuda-cccl=11.8 cuda-runtime=11.8 cuda-version=11.8 \
  libcusparse=11 libcusparse-dev=11 libcublas=11 libcublas-dev=11 \
  -c nvidia -c pytorch -y
pip install -U -r requirements.txt;
MAX_JOBS=12 pip install flash-attn==2.0.4 --no-build-isolation;

# data
#bash bash_scripts/generate_data-possible.sh
