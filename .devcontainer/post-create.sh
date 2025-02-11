#!/usr/bin/env bash
set -e

export UV_LINK_MODE=copy
uv venv openr1 --seed --python 3.11
source openr1/bin/activate

uv pip install --upgrade pip
uv pip install wandb
uv pip install vllm==0.7.1
FLASH_ATTENTION_SKIP_CUDA_BUILD=TRUE  uv pip install flash-attn --no-build-isolation

# Install project in development mode
GIT_LFS_SKIP_SMUDGE=1 uv pip install -e '.[dev]' --no-build-isolation