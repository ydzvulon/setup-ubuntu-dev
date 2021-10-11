FROM ubuntu:20.04

RUN apt-get update && apt-get install -y git sudo
RUN git clone https://github.com/ydzvulon/setup-ubuntu-dev.git \
    && bash setup-ubuntu-dev/install_all.sh