


VERSION=6.0.0
GLIBC_VER=2.3.6-401834
PYTHONV=3.5
PACKAGE=pypy${PYTHONV}-${VERSION}-linux_x86_64-portable
#wget https://bitbucket.org/squeaky/portable-pypy/downloads/pypy3.5-6.0.0-linux_x86_64-portable.tar.bz2

# make directory
mkdir -p /opt/bin
wget https://bitbucket.org/squeaky/portable-pypy/downloads/${PACKAGE}.tar.bz2
tar -xjf pypy${PYTHONV}-${VERSION}-linux_x86_64-portable.tar.bz2
sudo mv ${PACKAGE}/ /opt/pypy
cd /opt

#mv ${PACKAGE} apy && cd apy && ./install.sh -I /opt/python/
printf "%s\n%s" "#! /usr/bin/bash" | sudo tee -a /etc/profile.d/opt-path.sh
printf "%s\n%s" "PATH=\$PATH:/opt/bin:/opt/pypy/bin:/opt/python/bin" | sudo tee -a /etc/profile.d/opt-path.sh
sudo chmod +x /etc/profile.d/opt-path.sh

sudo ln -sf /opt/pypy/bin/pypy /opt/bin/python
sudo ln -sf /opt/pypy/bin/pypy3.5 /opt/bin/python3
sudo ln -sf /opt/pypy/bin/virtualenv-pypy /opt/bin/virtualenv
sudo ln -sf /opt/pypy/bin/virtualenv-pypy /opt/bin/pyvenv

sudo python -m ensurepip
sudo ln -sf /opt/pypy/bin/easy_install-3.5 /opt/bin/easy_install
sudo ln -sf /opt/pypy/bin/pip3 /opt/bin/pip
sudo ln -sf /opt/pypy/bin/pip3 /opt/bin/pip3

sudo pip install cython
sudo ln -sf /opt/pypy/bin/cython /opt/bin/cython
