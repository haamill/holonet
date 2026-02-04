#!/bin/bash
# Setup script for Neural Holography environment
# Updated for modern GPU (RTX 50 series) with CUDA 12.x support

source ~/anaconda3/etc/profile.d/conda.sh

# Create conda environment with Python 3.10+
conda create -n neural-holography python=3.11 -y
conda activate neural-holography

# Install PyTorch with CUDA 12.1 support (for RTX 50 series GPUs)
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y

# Install other dependencies
conda install scipy scikit-image matplotlib pillow imageio networkx -c conda-forge -y
conda install tensorboard -c conda-forge -y

# Install pip packages
pip install configargparse opencv-python tensorboardX aotools pyfirmata pyserial

