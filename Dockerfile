# to use ubuntu or debian
FROM ubuntu:18.04

RUN export DEBIAN_FRONTEND=noninteractive && \
        apt-get update -y && \
        apt-get install -y software-properties-common && \
        add-apt-repository ppa:bitcoin/bitcoin && \
        apt-get update && \
        apt-get install -y libdb4.8-dev libdb4.8++-dev && \
        apt-get install -y libminiupnpc-dev libgmp10 libcurl3-gnutls && \
        apt-get remove --purge -y software-properties-common && \
        apt-get autoremove -y && \
        apt-get clean
