# AppScale
#
# VERSION 0.0.1

FROM ubuntu:precise

# First, install git
RUN apt-get install -y git-core

# Next, grab the main and tools branches from git
# Use my docker branch until it gets merged into master.
cd /root \
  && git clone git://github.com/AppScale/appscale.git \
  && git clone git://github.com/AppScale/appscale-tools /root/appscale-tools

# Install main
RUN bash /root/appscale/debian/appscale_build.sh

# Install the tools
RUN bash /root/appscale-tools/debian/appscale_build.sh
