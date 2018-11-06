# from https://github.com/coreos/matchbox/releases
wget https://github.com/coreos/matchbox/releases/download/v0.7.0/matchbox-v0.7.0-linux-amd64.tar.gz
wget https://github.com/coreos/matchbox/releases/download/v0.7.0/matchbox-v0.7.0-linux-amd64.tar.gz.asc

gpg --keyserver pgp.mit.edu --recv-key 18AD5014C99EF7E3BA5F6CE950BDD3E0FC8A365E
gpg --verify matchbox-v0.7.0-linux-amd64.tar.gz.asc matchbox-v0.7.0-linux-amd64.tar.gz

tar xzvf matchbox-v0.7.0-linux-amd64.tar.gz
cd matchbox-v0.7.0-linux-amd64

sudo cp contrib/systemd/matchbox-on-coreos.service /etc/systemd/system/matchbox.service
