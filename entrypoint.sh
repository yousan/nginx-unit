#!/bin/bash
# This is wrapper.sh

# /usr/sbin/sshd -D >> /var/log/container.log &
# /usr/bin/mongod --dbpath /var/spool/mongodb >> /var/log/container.log &
echo 'hoge' >> /var/log/container.log
tail -f /var/log/container.log