#! /bin/bash
apt-get update
apt-get -y upgrade

%{ for key in ssh_keys ~}
echo ${key} >> ~ubuntu/.ssh/authorized_keys
%{ endfor ~}
