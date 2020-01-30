FROM ubuntu:18.04

LABEL name="base build for erkale"
LABEL owner="Alex Coleman <a.coleman1@leeds.ac.uk"
LABEL version="1.0.0"
LABEL description="A base image for erkale library that installs requirements"

# install required libraries
RUN apt-get update -y
RUN apt-get -y install gfortran libtool autogen pkg-config autoconf cmake build-essential libatlas-base-dev libopenblas-base libgsl0-dev libhdf5-dev libint-dev libxc-dev git wget

RUN echo "Base build complete!"
