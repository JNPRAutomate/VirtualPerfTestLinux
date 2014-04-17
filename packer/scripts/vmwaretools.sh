#!/bin/bash -eux

#yum erase -y fuse

# Install VMWare Tools 
echo "Installing VMWare Tools..."
cd /tmp
sudo mkdir -p /mnt/cdrom
sudo mount -o loop /tmp/linux.iso /mnt/cdrom
tar zxf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
sudo /tmp/vmware-tools-distrib/vmware-install.pl --default
rm /tmp/linux.iso
sudo umount /mnt/cdrom
sudo rmdir /mnt/cdrom