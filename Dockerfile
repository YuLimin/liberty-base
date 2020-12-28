# cd Base
# docker build -t websphere-liberty:base .

# Base image
FROM websphere-liberty


# Maintainer
MAINTAINER YuLimin YuLimin@cn.ibm.com 139 2516 5920

USER root

# Commands to update the image
# RUN apt-get update && apt-get install -y unzip
RUN apt-get update && apt-get install -y --no-install-recommends unzip wget telnet vim && rm -rf /var/lib/apt/lists/*


ENV TZ=Asia/Shanghai \
    DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y tzdata \
    && ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/*


# Commands when creating a new container
# CMD
