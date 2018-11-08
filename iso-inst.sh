#Download this file with: curl -OL https://tinyurl.com/coreos-iso
# curl -OL https://raw.githubusercontent.com/SeanSingh/coreos/master/coreos-install.sh
wget https://raw.githubusercontent.com/SeanSingh/coreos/master/minimal-ignition.json
wget https://raw.githubusercontent.com/SeanSingh/coreos/master/coreos-install
sudo /bin/bash coreos-install -d /dev/sda -C stable -i minimal-ignition.json
echo "systemctl reboot"
