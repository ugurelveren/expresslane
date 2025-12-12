FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Install Hugo (extended version for SCSS support)
ARG HUGO_VERSION=0.128.2
RUN apt-get update && apt-get install -y wget \
    && wget -O hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
    && dpkg -i hugo.deb \
    && rm hugo.deb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js for any npm dependencies
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs

# Install additional useful tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    tree \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user (idempotent)
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Make group/user creation safe if they already exist in the base image
RUN apt-get update \
    && apt-get install -y sudo \
    && (getent group $USER_GID >/dev/null || groupadd --gid $USER_GID $USERNAME) \
    && (id -u $USERNAME >/dev/null 2>&1 || useradd --uid $USER_UID --gid $USER_GID -m $USERNAME) \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME \
    && rm -rf /var/lib/apt/lists/*

# Add development aliases to bashrc
RUN echo 'alias dev="/workspaces/expresslane/scripts/dev.sh"' >> /home/$USERNAME/.bashrc \
    && echo 'alias hugo-serve="dev serve"' >> /home/$USERNAME/.bashrc \
    && echo 'alias hugo-build="dev build"' >> /home/$USERNAME/.bashrc \
    && echo 'alias hugo-clean="dev clean"' >> /home/$USERNAME/.bashrc \
    && echo 'alias hugo-test="dev test"' >> /home/$USERNAME/.bashrc

USER $USERNAME
