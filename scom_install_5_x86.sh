#!/bin/bash

cp files/scom.repo /etc/yum.repos.d/
chmod 644 /etc/yum.repos.d/scom.repo
yum install -y scx
chkconfig scx-cimd on
service scx-cimd restart
