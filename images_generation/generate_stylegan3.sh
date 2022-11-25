#! /bin/bash

git clone https://github.com/NVlabs/stylegan3


# Change Arguments: https://github.com/NVlabs/stylegan3#getting-started
python3 stylegan3/gen_images.py  \
  --outdir=/content/drive/MyDrive/datasets/my_generated/stylegan3/stylegan3-r-ffhqu-1024x1024.pkl  \
  --trunc=0.7         \
  --seeds=1-5000      \
  --network=https://api.ngc.nvidia.com/v2/models/nvidia/research/stylegan3/versions/1/files/stylegan3-r-ffhqu-1024x1024.pkl