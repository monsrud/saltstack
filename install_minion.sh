#!/bin/sh

curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh -P -M -x python3

systemctl disable salt-master
systemctl enable salt-minion

systemctl start salt-minion

