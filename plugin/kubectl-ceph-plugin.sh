#!/bin/bash

YUM=$(which yum)
APT=$(which apt-get)

if [ ! -z "$YUM" ]; then
    yum install git -y > /dev/null
    git clone https://github.com/rahulwaykos/kubectl-ceph ~/.ceph-plugin > /dev/null 2>&1
    rm ~/.ceph-plugin/kubectl-ceph-plugin.sh
    chmod -R +x ~/.ceph-plugin/
    mv ~/.ceph-plugin/* /usr/local/bin > /dev/null
    
 elif [ ! -z "$APT" ]; then
    apt-get install git -y > /dev/null
    git clone https://github.com/rahulwaykos/kubectl-ceph ~/.ceph-plugin > /dev/null 2>&1
    rm ~/.ceph-plugin/kubectl-ceph-plugin.sh
    chmod -R +x ~/.ceph-plugin
    mv ~/.ceph-plugin/* /usr/local/bin > /dev/null
fi

