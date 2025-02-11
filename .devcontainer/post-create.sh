#!/usr/bin/env bash
set -e

uv venv openr1 --seed --python 3.11
source openr1/bin/activate

uv pip install --upgrade pip --link-mode=copy
uv pip install vllm==0.7.1 --link-mode=copy
FLASH_ATTENTION_SKIP_CUDA_BUILD=TRUE  uv pip install flash-attn --no-build-isolation --link-mode=copy

# Install project in development mode
GIT_LFS_SKIP_SMUDGE=1 uv pip install -e '.[dev]' --no-build-isolation --link-mode=copy 