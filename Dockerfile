FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y \
                apt-utils\
                build-essential \
                automake \
                libssl-dev \
                libcurl4-openssl-dev \
                libjansson-dev \
                libgmp-dev \
                zlib1g-dev \
                git \
    && apt-get install -y \
        autoconf \
        automake \
        curl \
        g++ \
        git \
        libcurl4-openssl-dev \
        libjansson-dev \
        libssl-dev \
        libgmp-dev \
        make \
        pkg-config \    
    && git clone --recursive https://github.com/JayDDee/cpuminer-opt.git \
    && cd cpuminer-opt\
    && ./build.sh

WORKDIR cpuminer-opt
CMD ["./cpuminer"]



