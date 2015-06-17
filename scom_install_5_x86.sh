#!/bin/bash

yum install -y epel-release
cp files/scom_5_x86.repo /etc/yum.repos.d/
chmod 644 /etc/yum.repos.d/scom_5_x86.repo
yum install -y scx
/sbin/chkconfig scx-cimd on
/sbin/service scx-cimd restart
