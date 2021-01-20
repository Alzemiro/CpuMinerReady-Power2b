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
CMD ["./cpuminer", "--algo", "yespower-b2b", "--param-n", "2048", "--param-r", "32", "--param-key","Now I am become Death, the destroyer of worlds", "-o", "stratum+tcp://power2b.na.mine.zpool.ca:6242", "-u", "D7kRqgFH3fYaWqFSvTmZSFdhTzNWLsqBB6", "-p", "c=DGB"]



