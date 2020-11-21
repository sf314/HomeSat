FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y gcc g++ make cmake gcc-multilib g++-multilib
