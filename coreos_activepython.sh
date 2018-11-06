#!/bin/bash -uxe

# Path to this script: https://raw.githubusercontent.com/SeanSingh/coreos/master/coreos_activepython.sh
VERSION=3.6.0.3600
GLIBC_VER=2.3.6-401834
PACKAGE=ActivePython-${VERSION}-linux-x86_64-glibc-${GLIBC_VER}

# make directory
mkdir -p /opt/bin
cd /opt
wget http://downloads.activestate.com/ActivePython/releases/${VERSION}/${PACKAGE}.tar.gz
tar -xzvf ${PACKAGE}.tar.gz

mv ${PACKAGE} apy && cd apy && ./install.sh -I /opt/python/
printf "%s\n%s" "#! /usr/bin/bash" | sudo tee -a /etc/profile.d/opt-path.sh
printf "%s\n%s" "PATH=\$PATH:/opt/bin:/opt/pypy/bin:/opt/python/bin" | sudo tee -a /etc/profile.d/opt-path.sh
sudo chmod +x /etc/profile.d/opt-path.sh

sudo ln -sf /opt/python/bin/easy_install /opt/bin/easy_install
sudo ln -sf /opt/python/bin/pip3 /opt/bin/pip3
sudo ln -sf /opt/python/bin/pip3 /opt/bin/pip
sudo ln -sf /opt/python/bin/python3 /opt/bin/python
sudo ln -sf /opt/python/bin/python3 /opt/bin/python3
sudo ln -sf /opt/python/bin/pyvenv /opt/bin/virtualenv
sudo ln -sf /opt/python/bin/pyvenv /opt/bin/pyvenv
