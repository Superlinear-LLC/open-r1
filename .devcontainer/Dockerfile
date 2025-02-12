FROM --platform=linux/amd64 mcr.microsoft.com/devcontainers/python:1-3.11-bullseye

# Install git and other necessary packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends git git-lfs numactl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*