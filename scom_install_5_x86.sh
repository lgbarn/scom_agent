#!/bin/bash

cp files/scom_5_x86.repo /etc/yum.repos.d/
chmod 644 /etc/yum.repos.d/scom_5_x86.repo
yum install -y scx
chkconfig scx-cimd on
service scx-cimd restart
