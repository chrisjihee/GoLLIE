#!/bin/bash
# basic
mamba create -n GoLLIE python=3.11 -y; mamba activate GoLLIE;
mamba install cuda-nvcc=11.8 cudatoolkit=11.8 -c nvidia -y;

pip install -U -r requirements.txt
MAX_JOBS=12 pip install flash-attn==2.0.4 --no-build-isolation
