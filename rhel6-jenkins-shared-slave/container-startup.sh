#!/bin/bash

# add loopback aliases
/sbin/ifconfig lo:0 127.0.1.1 netmask 255.255.255.0 up
/sbin/ifconfig lo:1 127.0.2.1 netmask 255.255.255.0 up
# enable multicast
ip route add  230.0.0.0/24 dev lo table local

# start supervisord which govern sshd
/usr/bin/supervisord
