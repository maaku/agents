# Use Microsoft's base devcontainer image
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Create workspace directory with proper permissions
RUN sudo mkdir -p /workspace \
    && sudo chown $(whoami):$(whoami) /workspace

# Set working directory
WORKDIR /workspace
