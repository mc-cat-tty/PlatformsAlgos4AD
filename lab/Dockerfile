FROM ubuntu:24.04

LABEL version="1.0"
WORKDIR /home/clustering

RUN echo "export DISPLAY=\"$(getent hosts host.docker.internal | cut -f1 -d' '):200\"" >> /root/.bashrc

ENV DEBIAN_FRONTEND "noninteractive"
RUN apt update && \
    apt install --no-install-recommends -y libpcl-dev pcl-tools build-essential