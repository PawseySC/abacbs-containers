#!/bin/bash

# Install apt dependencies
apt-get update
apt-get -y install \
  gcc \
  libbz2-dev \
  libcurl4-openssl-dev \
  liblzma-dev \
  libncurses5-dev \
  libncursesw5-dev \
  make \
  perl \
  tar \
  vim \
  wget \
  zlib1g-dev

# Build samtools
mkdir /build
cd /build

wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2
tar -vxjf samtools-1.9.tar.bz2

cd samtools-1.9
./configure --prefix=/apps
make
make install

cd htslib-1.9
make
make install
