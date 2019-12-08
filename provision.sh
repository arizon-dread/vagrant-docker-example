#!/bin/bash
su
useradd vagrant -p vagrant 
usermod -aG root vagrant
mkdir -p /home/vagrant/.ssh 
chmod 700 /home/vagrant/.ssh 
touch /home/vagrant/.ssh/authorized_keys 
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant: /home/vagrant/
apt-get update && apt-get -q -y install openssh-server
update-rc.d ssh defaults
exit 0
