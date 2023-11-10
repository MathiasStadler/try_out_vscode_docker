FROM ubuntu:23.04

LABEL org.opencontainers.image.source https://github.com/browserless/chrome

COPY fonts/* /usr/share/fonts/truetype/


RUN apt-get update && apt-get install -y \
  ca-certificates \
  curl \
  # dumb-init \
  # git \
  # gnupg \
  # libu2f-udev \
  software-properties-common \
  ssh \
  wget \
  xvfb
  
  RUN apt-get -qq clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/fonts/truetype/noto

  COPY start.sh start.sh