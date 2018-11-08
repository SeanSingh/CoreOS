wget http://boot.ipxe.org/ipxe.iso
qemu-kvm -m 1024 ipxe.iso --curses

iPXE> dhcp
iPXE> chain http://${YOUR_BOOT_URL}

Immediately iPXE should download your boot script URL and start grabbing the images from the Container Linux storage site:

${YOUR_BOOT_URL}... ok
http://alpha.release.core-os.net/amd64-usr/current/coreos_production_pxe.vmlinuz... 98%
