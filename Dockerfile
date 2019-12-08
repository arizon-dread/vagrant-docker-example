#FROM panubo/sshd
FROM ubuntu:trusty
COPY init.sh /usr/local/bin
COPY provision.sh /usr/local/bin
RUN provision.sh
COPY vagrant_rsa_id.pub /home/vagrant
RUN  cat /home/vagrant/vagrant_rsa_id.pub >> /home/vagrant/.ssh/authorized_keys
#EXPOSE 2202:22
CMD ["init.sh"]

