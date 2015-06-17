#!/bin/bash

cp files/scom.repo /etc/yum.repos.d/
chmod 644 /etc/yum.repos.d/scom.repo
yum install -y scx
/sbin/chkconfig scx-cimd on
/sbin/service scx-cimd restart
