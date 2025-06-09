# Dockerfile for Unitree Go2 RL Dev Environment (root only)
FROM ubuntu:22.04

# 비대화 설치 설정
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul

# 기본 패키지 설치
RUN apt-get update && apt-get install -y \
  sudo \
  vim \
  tzdata \
  build-essential \
  cmake \
  git \
  wget \
  curl \
  unzip \
  libglfw3-dev \
  libxinerama-dev \
  libxcursor-dev \
  libxi-dev \
  libyaml-cpp-dev \
  libeigen3-dev \
  python3 \
  python3-pip \
  python3-dev \
  python3-venv \
  libglew-dev \
  libosmesa6-dev \
  libgl1-mesa-glx \
  libgl1-mesa-dev \
  libegl1-mesa-dev \
  libgles2-mesa-dev \
  libglvnd-dev \
  && rm -rf /var/lib/apt/lists/*

# 작업 디렉토리 생성
WORKDIR /root/workspace

RUN ln -fs /usr/share/zoneinfo/Asia/Seoul /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update && apt-get install -y python3-pip && pip3 install --upgrade pip

RUN pip3 install mujoco numpy pygame torch torchvision gym==0.26.2 gymnasium


# 기본 쉘 설정
SHELL ["/bin/bash", "-c"]

# 루트 계정으로 진입
CMD ["/bin/bash"]
