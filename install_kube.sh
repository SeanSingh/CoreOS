
#Get this file with https://tinyurl.com/kube-inst
wget https://raw.githubusercontent.com/SeanSingh/CoreOS/master/cloud-config.yml
coreos-cloudinit -validate --from-file cloud-config.yml
sudo coreos-install -d /dev/sda -C stable -c cloud-config.yml
