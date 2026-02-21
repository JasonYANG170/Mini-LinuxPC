FROM ubuntu:22.04

# 设置环境变量
ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# 安装构建依赖
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    wget \
    curl \
    bc \
    bison \
    flex \
    libssl-dev \
    libncurses-dev \
    device-tree-compiler \
    u-boot-tools \
    python3 \
    python3-pip \
    cpio \
    rsync \
    unzip \
    gawk \
    mtd-utils \
    liblz4-tool \
    libgmp-dev \
    libmpc-dev \
    libmpfr-dev \
    texinfo \
    dosfstools \
    mtools \
    zip \
    p7zip-full \
    sudo \
    vim \
    && rm -rf /var/lib/apt/lists/*

# 创建构建用户
RUN useradd -m -s /bin/bash builder && \
    echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# 设置工作目录
WORKDIR /workspace

# 切换到构建用户
USER builder

# 配置 git
RUN git config --global user.name "Builder" && \
    git config --global user.email "builder@mini-linuxpc.local" && \
    git config --global --add safe.directory /workspace

# 设置入口点
ENTRYPOINT ["/bin/bash"]
