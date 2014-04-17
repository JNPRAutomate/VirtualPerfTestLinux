#!/bin/bash -eux

echo "Enabling IP Forwarding..."
echo "net.ipv4.ip_forward = 1" | sudo tee -a /etc/sysctl.conf