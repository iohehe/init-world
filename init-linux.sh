#! /bin/bash

# sshd
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sudo sed -i '$a ClientAliveInterval 60\nClientAliveCountMax 1' /etc/ssh/sshd_config
service sshd reload
